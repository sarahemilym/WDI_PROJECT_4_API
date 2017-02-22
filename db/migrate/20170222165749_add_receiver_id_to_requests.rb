class AddReceiverIdToRequests < ActiveRecord::Migration[5.0]
  def change
    add_column :requests, :receiver_id, :string
  end
end
