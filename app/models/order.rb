class Order < ApplicationRecord
  belongs_to :user_id
  belongs_to :rifle_id
  belongs_to :apperral_id
end
