class UsersPlantSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :plant_id
end
