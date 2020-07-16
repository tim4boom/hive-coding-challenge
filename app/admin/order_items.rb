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

  show do
    attributes_table title: 'Details' do
      row :product_name
      row 'Item of Order' do |item|
        link_to admin_order_path(item.order.id) do
          "#{item.order.id} - #{item.order.recipient} (#{item.order.status})"
        end
      end
      row :created_at
    end
  end
end
