class DropPaintedAndCondition < ActiveRecord::Migration[6.1]
  def change
    remove_column :listings, :condition_id
    remove_column :listings, :painted_id
    drop_table :painteds
    drop_table :conditions
  end
end
