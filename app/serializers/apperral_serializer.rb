class ApperralSerializer < ActiveModel::Serializer
  attributes :id, :description, :xs_inventory, :s_inventory, :medium_inventory, :large_inventory, :xl_inventory, :xxl_inventory
end
