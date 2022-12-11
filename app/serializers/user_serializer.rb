class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :first_name, :last_name, :address, :state, :zip_code, :city
end
