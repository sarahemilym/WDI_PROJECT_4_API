class Request < ApplicationRecord
  belongs_to :room
  belongs_to :user

  enum status: [ :rejected, :pending, :accepted ]

end
