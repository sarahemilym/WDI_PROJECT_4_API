class RoomSerializer < ActiveModel::Serializer
  attributes :id, :name, :playlist, :playlist_id, :owner_id, :authorized_users
  has_one :user
end
