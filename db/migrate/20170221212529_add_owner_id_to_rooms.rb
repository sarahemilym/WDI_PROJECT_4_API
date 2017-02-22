class AddOwnerIdToRooms < ActiveRecord::Migration[5.0]
  def change
    add_column :rooms, :owner_id, :string
  end
end
