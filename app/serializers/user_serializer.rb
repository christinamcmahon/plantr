class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :avatar_url, :email, :notification, :plant_info

  def plant_info
    if self.object.plants
      {
        plants: self.object.plants.map { |plant|
          # byebug
          {
              id: plant.id,
              name: plant.name,
              notes: plant.notes,
              water_frequency: plant.water_frequency,
              image_url: plant.image_url,
          }
        },
      }
    end
  end
end
