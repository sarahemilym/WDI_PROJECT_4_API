class RoomSerializer < ActiveModel::Serializer
  attributes :id, :name, :playlist_id, :uri, :track_uri
  has_one :user
end
