require 'spec_helper'

describe Appointment do
  it { should belong_to(:session) } # ---- association works as desired with session belongs to appointment.
  it { should belong_to(:user).with_foreign_key('student_id')}
  it { should have_many(:comments)}
end
