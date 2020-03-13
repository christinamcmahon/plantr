class User < ApplicationRecord
  has_many :users_plants, dependent: :destroy
  has_many :plants, through: :users_plants

  has_secure_password
  validates :username, uniqueness: { case_sensitive: false }
end
