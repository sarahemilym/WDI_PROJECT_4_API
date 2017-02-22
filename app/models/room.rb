class Room < ApplicationRecord
  belongs_to :user
  has_one :playlist
  has_many :requests
end
