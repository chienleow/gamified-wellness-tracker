class User < ApplicationRecord
  has_many :user_goals
  has_many :goals, through: :user_goals
  belongs_to :team

  validates :username, presence: true
  validates :email, uniqueness: true, presence: true
  # make sure the validations here matches google user validations

  has_secure_password

  scope :filter_by_username, -> (username) { where username: username }
end