class User < ApplicationRecord
  has_secure_password
  has_many :workouts
  validates_uniqueness_of :username, :email
  validates_presence_of :password
end
