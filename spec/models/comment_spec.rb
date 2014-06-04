require 'spec_helper'

describe Comment do
  # Model
  it { should belong_to(:commentable) }
  it { should belong_to(:user).with_foreign_key('commentor_id') }

  # DB
  it { should have_db_column(:commentable_id) }
  it { should have_db_column(:commentable_type) }
  it { should have_db_column(:commentor_id) }
  it { should have_db_column(:body) }
end
