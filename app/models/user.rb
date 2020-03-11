class User < ApplicationRecord
  has_many :users_plants, dependent: :destroy
  has_many :plants, through: :users_plants
end
