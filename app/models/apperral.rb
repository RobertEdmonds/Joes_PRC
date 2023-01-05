class Apperral < ApplicationRecord
    validates :description, :price, {presence: true}
    
    has_many :xsmalls
    has_many :smalls 
    has_many :mediums 
    has_many :larges  
    has_many :xlarges
    has_many :xxlarges 
    has_many :orders, dependent: :destroy 

end
