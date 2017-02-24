class Room < ApplicationRecord
  belongs_to :user
  has_many :requests

  after_update_commit do
    ActionCable.server.broadcast "room_channel_#{self.id}", self.track_uri
  end
end
