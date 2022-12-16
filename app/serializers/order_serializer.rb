class OrderSerializer < ActiveModel::Serializer
  attributes :id
  has_one :user_id
  has_one :rifle_id
  has_one :apperral_id
end
