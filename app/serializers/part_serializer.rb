class PartSerializer < ActiveModel::Serializer
  attributes :id, :description, :inventory, :price
  has_one :rifle_id
end
