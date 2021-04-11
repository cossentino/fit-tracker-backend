class Goal < ApplicationRecord
  belongs_to :user
  validates :month, uniqueness: { scope: :user, message: "We're in beta, only one goal per month!" }
end
