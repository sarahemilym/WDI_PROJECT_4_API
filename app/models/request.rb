class Request < ApplicationRecord
  belongs_to :room
  belongs_to :sender, foreign_key: :sender_id, class_name: "User"
  belongs_to :receiver, foreign_key: :receiver_id, class_name: "User"

  before_create :set_default_status

  def accept
    self.status = "accepted"
    self.save
  end

  def reject
    self.status = "rejected"
    self.save
  end

  private

    def set_default_status
      self.status = "pending"
    end
end
