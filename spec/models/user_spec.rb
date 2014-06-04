require 'spec_helper'

describe User do
  it { should have_many(:sessions) }
  it { should have_many(:appointments).with_foreign_key('student_id') }
  it { should have_many(:comments) }
end
