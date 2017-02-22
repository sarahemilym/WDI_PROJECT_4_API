class RoomSerializer < ActiveModel::Serializer
  attributes :id, :name, :playlist, :playlist_id, :owner_id
  has_one :user
end
