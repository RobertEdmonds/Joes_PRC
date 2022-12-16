class RifleSerializer < ActiveModel::Serializer
  attributes :id, :caliper, :specs, :price, :"pre-assembled", :inventory
end
