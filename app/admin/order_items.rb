# frozen_string_literal: true

ActiveAdmin.register OrderItem do

  # TODO
  menu label: 'Order Items', parent: 'Order Management', priority: 0

  permit_params :product_name, :order_id

end
