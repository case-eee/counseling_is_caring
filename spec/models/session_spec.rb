require 'spec_helper'

describe Session do
  it { should have_one(:appointment) }
  it { should belong_to(:user).with_foreign_key('counselor_id')}
end
