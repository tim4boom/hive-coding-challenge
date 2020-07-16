# frozen_string_literal: true

ActiveAdmin.register Order do
  menu label: 'Order', parent: 'Order Management', priority: 0

  permit_params :recipient, :status

  index do
    selectable_column
    column :recipient
    column :status
    actions
  end

  show do
    attributes_table title: 'Details' do
      row :recipient
      row :status
      row 'Order Items' do
        @order = Order.find(params[:id])
        @order_items = OrderItem.where(order_id: @order)
        @order_items.each do |item|
          "#{item.id} - #{item.product_name}"
        end
      end
    end
  end

  form do |f|
    f.inputs do
      f.input :recipient
      f.input :status, as: :select, collection: Order::ALLOWED_STATUSES, prompt: '- choose -'
    end
    f.actions
  end
end
