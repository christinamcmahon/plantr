class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :avatar_url, :email, :notification
end
