class User < ApplicationRecord
  has_secure_password
  has_many :rooms
  validates :email, presence: true, uniqueness: true
end
