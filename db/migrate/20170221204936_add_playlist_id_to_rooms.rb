class AddPlaylistIdToRooms < ActiveRecord::Migration[5.0]
  def change
    add_column :rooms, :playlist_id, :string
  end
end
