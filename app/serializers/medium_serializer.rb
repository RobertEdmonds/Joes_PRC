class MediumSerializer < ActiveModel::Serializer
  attributes :id, :amount
  has_one :apperal_id
end
