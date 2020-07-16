class Order < ApplicationRecord
  ALLOWED_STATUSES = [
      STATUS_NEW = "new",
      STATUS_PROCESSING = "processing",
      STATUS_SHIPPED = "shipped",
      STATUS_NEEDS_RESTOCKING = "needs_restocking",
      STATUS_CANCELLED = "cancelled"
  ].freeze

  EMAIL = /([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})/i.freeze

  has_many :order_items, dependent: :destroy

  validates :recipient, :status, presence: true
  validates_associated :order_items
  validates_format_of :recipient, with: EMAIL

  def title
    "#{id} - #{recipient.match(Order::EMAIL)} (#{status})"
  end
end
