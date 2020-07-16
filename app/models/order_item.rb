class OrderItem < ApplicationRecord
  belongs_to :order

  #TODO
  validates :product_name, :order_id, presence: true
  validates_length_of :product_name, minimum: 1, maximum: 55
end
