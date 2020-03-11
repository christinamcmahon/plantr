class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :password_digest, :avatar_url, :email, :notification
end
