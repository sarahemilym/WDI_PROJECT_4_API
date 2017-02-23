class AddAuthorizedUsersToRooms < ActiveRecord::Migration[5.0]
  def change
    add_column :rooms, :authorized_users, :text, array: true, default: '{}'
  end
end
