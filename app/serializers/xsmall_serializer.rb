class XsmallSerializer < ActiveModel::Serializer
  attributes :id, :amount
  has_one :apperral_id
end
