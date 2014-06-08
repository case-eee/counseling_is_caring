require 'bcrypt'
include BCrypt

class User < ActiveRecord::Base
  has_many :appointments, foreign_key: :student_id


  has_many :sessions, foreign_key: :counselor_id

  # has_one :session,  through: :appointment, foreign_key: 'student_id', source: :session

  has_many :comments, as: :commentable, foreign_key: :commentor_id

  validates :first_name, presence: true
  validates :role, presence: true
  validates :password_hash, presence: true
  validates :email, presence: true,
                    uniqueness: true,
                    format: { with: /\A[a-zA-Z1-9\_\-]+\@[a-z1-9\-]+\.[a-z]+/ }


 def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password.to_s
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
