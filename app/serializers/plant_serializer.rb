class PlantSerializer < ActiveModel::Serializer
  # http://localhost:3000/api/v1/plants
  attributes :id, :name, :notes, :water_frequency, :image_url, :user_info

  def user_info
    if self.object.users
      {
        users: self.object.users.map { |user|
          # byebug
          {
            user: {
              id: user.id,
              name: user.name,
              username: user.username,
              avatar_url: user.avatar_url,
              email: user.email,
              notification: user.notification,
            },
          }
        },
      }
    end
  end
end
