class User < ActiveRecord::Base
	has_many :sessions, foreign_key: :counselor_id
	has_many :appointments, foreign_key: :student_id
	has_many :comments, as: :commentable

end