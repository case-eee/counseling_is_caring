require 'bcrypt'

class User < ActiveRecord::Base
  has_many :sessions, foreign_key: :counselor_id
  has_many :appointments, foreign_key: :student_id
  has_many :comments, as: :commentable, foreign_key: :commentor_id


include BCrypt

 def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(email, password)
    user = User.find_by_email(email)
    if user && user.password == password
      user
    else
      nil
    end
  end

  # def self.test
  #   "test"
  # end

end
