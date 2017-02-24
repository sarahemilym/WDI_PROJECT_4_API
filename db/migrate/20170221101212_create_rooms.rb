class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.string :name
      t.string :playlist_id
      t.string :uri
      t.string :track_uri
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
