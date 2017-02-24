class RequestSerializer < ActiveModel::Serializer
  attributes :id, :message, :status, :receiver, :sender 
  has_one :room
end
