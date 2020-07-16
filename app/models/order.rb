class Order < ApplicationRecord
  ALLOWED_STATUSES = [
      STATUS_NEW = "new",
      STATUS_PROCESSING = "processing",
      STATUS_SHIPPED = "shipped",
      STATUS_NEEDS_RESTOCKING = "needs_restocking",
      STATUS_CANCELLED = "cancelled"
  ].freeze

  has_many :order_items, dependent: :destroy

  validates :recipient, :status, presence: true
  validates_associated :order_items

  def title
    "#{id} - #{recipient} (#{status})"
  end
end
