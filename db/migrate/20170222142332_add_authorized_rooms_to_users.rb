class AddAuthorizedRoomsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :authorized_rooms, :text, array: true, default: '{}'
  end
end
