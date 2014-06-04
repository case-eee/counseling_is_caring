require 'spec_helper'

describe Appointment do
  it { should belong_to(:session) }
  it { should belong_to(:user).with_foreign_key('student_id')}
  it { should have_many(:comments)}
end
