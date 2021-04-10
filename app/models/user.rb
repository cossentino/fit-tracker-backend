class User < ApplicationRecord
  has_secure_password
  has_many :workouts
  has_many :goals
  validates_uniqueness_of :username, :email
end
