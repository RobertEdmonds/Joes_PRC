class Rifle < ApplicationRecord
    has_many :rifle_pictures 
    has_many :parts 
    has_many :orders
    
end
