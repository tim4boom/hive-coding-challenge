class RemoveIntegerColumnFromOrderItems < ActiveRecord::Migration[6.0]
  def change
    remove_column :order_items, :integer, :string
  end
end
