class DroppingTables < ActiveRecord::Migration[6.1]
  def change
    drop_table :line_items
    drop_table :carts
    drop_table :orders
    drop_table :products
  end
end
