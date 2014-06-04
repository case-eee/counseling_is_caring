require 'spec_helper'

describe Session do
  it { should belong_to(:appointment) }
  it { should belong_to(:user).with_foreign_key('counselor_id')}
end
