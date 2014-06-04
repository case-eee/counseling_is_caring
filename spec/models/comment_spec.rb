require 'spec_helper'

describe Comment do
  it { should belong_to(:commentable) }
  it { should belong_to(:user).with_foreign_key('commentor_id') }
end
