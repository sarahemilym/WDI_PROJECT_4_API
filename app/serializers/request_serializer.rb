class RequestSerializer < ActiveModel::Serializer
  attributes :id, :message, :status, :receiver_id
  has_one :room
  has_one :user
end
