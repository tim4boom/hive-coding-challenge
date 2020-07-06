# frozen_string_literal: true

ActiveAdmin.register OrderItem do
  # TODO

  menu label: "Order Items", parent: "Order Management", priority: 1

  permit_params :order_id, :product_name

  index do
    column :order
    column :product_name
    actions
  end

  show do
    attributes_table title: "Details" do
      row :order
      row :product_name
    end
  end

  form do |f|
    f.inputs do
      f.input :order
      f.input :product_name
    end
    f.actions
  end
end