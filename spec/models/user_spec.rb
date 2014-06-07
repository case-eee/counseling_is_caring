require 'spec_helper'
require 'bcrypt'
include BCrypt

describe User do

  it { should have_many(:sessions).with_foreign_key('counselor_id') }
  it { should have_many(:appointments).with_foreign_key('student_id') }
  it { should have_many(:comments) }

  it { should have_db_column(:first_name) }
  it { should have_db_column(:last_name) }
  it { should have_db_column(:role) }
  it { should have_db_column(:email) }
  it { should have_db_column(:password_hash) }
  it { should have_db_column(:cohort) }

  it { should validate_presence_of(:first_name) }
  it { should validate_presence_of(:role) }
  it { should validate_presence_of(:password_hash) }
  it { should validate_presence_of(:email) }
  it { should validate_uniqueness_of(:email) }
  it { should allow_value('test-user@test123.com', 'Testy_t3st@my-test.io').for(:email) }
  it { should_not allow_value('john doe@test.com').for(:email) }


  describe "#password" do
    let(:user) { User.create(:password => "password") }

    it "is comparable to a string" do
      expect(user.password).to eq "password"
    end

    it "doesn't store the password in plain text" do
      expect(user.password_hash).not_to eq "password"
    end
  end

  describe ".authenticate" do
    let (:user) { User.create(first_name: 'name', role: 'student', password: "password", email: 'email@email.com') }

    context "the email doesn't exist" do
      it "should return nil" do
        email = "not_there@gmail.com"
        password = "not a real password"
        expect(User.authenticate(email, password)).to be_nil
      end
    end
    context "the email and password are correct" do
      it "should return the user" do
        expect(User.authenticate(user.email, "password")).to eq user
      end
    end
    context "the email is correct but not password" do
       it "should return nil" do
        expect(User.authenticate(user.email, "not the password")).to be_nil
      end
    end
  end
end