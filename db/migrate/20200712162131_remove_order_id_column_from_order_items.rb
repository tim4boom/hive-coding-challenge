class RemoveOrderIdColumnFromOrderItems < ActiveRecord::Migration[6.0]
  def change
    remove_column :order_items, :order_id, :string
  end
end
