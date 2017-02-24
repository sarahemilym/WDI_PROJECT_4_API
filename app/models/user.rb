class User < ApplicationRecord
  has_secure_password
  has_many :rooms
  has_many :sent_requests, foreign_key: :sender_id, class_name: "Request"
  has_many :received_requests, foreign_key: :receiver_id, class_name: "Request"
  validates :email, presence: true, uniqueness: true

  def visible_rooms
    ([rooms] + Request.where(receiver_id: self.id, status: 'accepted').map(&:room)).flatten.uniq
  end
end
