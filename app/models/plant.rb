class Plant < ApplicationRecord
  has_many :users_plants, dependent: :destroy
  has_many :users, through: :users_plants
end
