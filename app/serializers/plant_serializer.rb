class PlantSerializer < ActiveModel::Serializer
  attributes :id, :name, :notes, :water_frequency, :image_url
end
