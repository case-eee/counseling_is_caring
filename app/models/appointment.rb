class Appointment < ActiveRecord::Base
	belongs_to :session
	belongs_to :user, foreign_key: :student_id
	has_many :comments, as: :commentable

end
