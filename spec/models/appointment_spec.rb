require 'spec_helper'

describe Appointment do

  # Model
  it { should belong_to(:session) }

  it { should belong_to(:user).with_foreign_key('student_id')}
  it { should have_many(:comments) }

  # DB
  it { should have_db_column(:session_id) }
  it { should have_db_column(:student_id) }
end
