class ApperralSerializer < ActiveModel::Serializer
  attributes :id, :description, :price, :xs_inventory, :s_inventory, :medium_inventory, :large_inventory, :xl_inventory, :xxl_inventory

  def xs_inventory 
    apperral = Xsmall.find_by(apperral_id: object.id)
    return apperral.amount.sum 
  end

  def s_inventory 
    apperral = Small.find_by(apperral_id: object.id)
    return apperral.amount.sum
  end

  def medium_inventory 
    apperral = Medium.find_by(apperral_id: object.id)
    return apperral.amount.sum
  end

  def large_inventory 
    apperral = Large.find_by(apperral_id: object.id)
    return apperral.amount.sum
  end

  def xl_inventory 
    apperral = Xlarge.find_by(apperral_id: object.id)
    return apperral.amount.sum
  end

  def xxl_inventory 
    apperral = Xxlarge.find_by(apperral_id: object.id)
    return apperral.amount.sum
  end
end
