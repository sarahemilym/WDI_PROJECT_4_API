class UserSerializer < ActiveModel::Serializer
  has_many :rooms
  attributes :id, :email, :first_name, :last_name, :spotify_id, :username, :authorized_rooms
end
