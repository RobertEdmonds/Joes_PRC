class Medium < ApplicationRecord
  belongs_to :apperal_id

  validates :amount, presence: true
end
