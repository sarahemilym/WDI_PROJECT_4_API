class UserSerializer < ActiveModel::Serializer
  has_many :rooms
  attributes :id, :email
end
