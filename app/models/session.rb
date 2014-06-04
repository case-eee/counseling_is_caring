class Session < ActiveRecord::Base
	has_one :appointment
	belongs_to :user, foreign_key: :counselor_id

end
