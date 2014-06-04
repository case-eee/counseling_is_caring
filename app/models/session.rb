class Session < ActiveRecord::Base
	belongs_to :appointment
	belongs_to :user, foreign_key: :counselor_id

end
