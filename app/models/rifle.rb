class Rifle < ApplicationRecord
    has_many :rifle_pictures, dependent: :destroy 
    has_many :parts 
    has_many :orders, dependent: :destroy
    
end
