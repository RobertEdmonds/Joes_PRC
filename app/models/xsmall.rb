class Xsmall < ApplicationRecord
  belongs_to :apperral_id

  validates :amount, presence: true
end
