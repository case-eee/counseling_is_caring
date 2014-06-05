require 'spec_helper'
require 'bcrypt'
include BCrypt

describe User do



  it { should have_many(:sessions).with_foreign_key('counselor_id') }
  it { should have_many(:appointments).with_foreign_key('student_id') }
  it { should have_many(:comments) }

  it { should have_db_column(:first_name) }
  it { should have_db_column(:last_name) }
  it { should have_db_column(:type) }
  it { should have_db_column(:email) }
  it { should have_db_column(:password_hash) }
  it { should have_db_column(:cohort) }
end



# let(:user) {User.new(email: "steve@steve.com", password_hash: "boom")}

# context "user authentication" do

#   it "can authenticate a user and returns a verified user" do

#     expect(user.password).to eq("correct")
#   end

# end
