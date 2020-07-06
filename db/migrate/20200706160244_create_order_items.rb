class CreateOrderItems < ActiveRecord::Migration[6.0]
  def change
    create_table :order_items do |t|
      t.string :order_id
      t.string :integer
      t.string :product_name

      t.timestamps
    end
  end
end
