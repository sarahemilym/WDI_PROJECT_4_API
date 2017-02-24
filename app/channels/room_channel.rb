class RoomChannel < ApplicationCable::Channel
  def subscribed
    stream_from stream_name
  end

  def receive(data)
    ActionCable.server.broadcast stream_name, data.fetch('message')
  end

  private

    def stream_name
      "room_channel_#{room_id}"
    end

    def room_id
      params.fetch('data').fetch('id')
    end
end
