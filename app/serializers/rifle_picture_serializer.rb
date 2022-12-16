class RiflePictureSerializer < ActiveModel::Serializer
  attributes :id, :image_url, :order_number
  has_one :rifle_id
end
