require 'spec_helper'

describe Session do
  it { should have_one(:appointment) }
  it { should have_one(:student).through(:appointment).source(:user) }

  it { should have_db_column(:date) }
  it { should have_db_column(:start_time) }
  it { should have_db_column(:end_time) }
  it { should have_db_column(:available) }
  it { should have_db_column(:counselor_id) }


end
