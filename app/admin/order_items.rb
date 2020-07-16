# frozen_string_literal: true

ActiveAdmin.register OrderItem do

  # TODO
  menu label: 'Order Items', parent: 'Order Management', priority: 0

  permit_params :product_name, :order_id

  index do
    selectable_column
    column :product_name
    column 'Item of Order' do |item|
      "#{item.order.id} - #{item.order.recipient} (#{item.order.status})"
    end
    column :created_at
    actions
  end

end
