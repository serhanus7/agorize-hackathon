class User < ApplicationRecord
  has_many :skills_users
  has_many :skills, through: :skills_users

  validates :points, numericality: { only_integer: true }
end
