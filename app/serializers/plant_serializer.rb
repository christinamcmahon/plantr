class PlantSerializer < ActiveModel::Serializer
  attributes :id, :name, :notes, :water_frequency, :image_url #, :user_info

  # def user_info
  #   if self.object.user {
  #       id: self.object.user.id,
  #       name: self.object.user.name,
  #       username: self.object.user.username,
  #       avatar_url: self.object.user.avatar_url,
  #       email: self.object.user.email,
  #       notification: self.object.user.notification
  #     }
  #   end
  # end
end
