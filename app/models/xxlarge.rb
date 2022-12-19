class Xxlarge < ApplicationRecord
  belongs_to :apperal_id

  validates :amount, presence: true
end
