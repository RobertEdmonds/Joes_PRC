class User < ApplicationRecord
    has_secured_password 

    validates :email, presence: true, uniqueness: true
    validates :first_name, :last_name, :state, :zip_code, :city, {presence: true} 
    validates :phone_number, presence: true, uniqueness: true, numericality: { only_integer: true }, length: { minimum: 10, maximum: 12 }
    validates :address, presence: true, uniqueness: true 
    validates :password, confirmation: true 

    has_many :orders
    has_many :rifles, through: :orders 
    has_many :apperrals, through: :orders 
end
