class FixingPaintedAndCondition < ActiveRecord::Migration[6.1]
  def change
    remove_column :painteds, :painted
    remove_column :conditions, :condition
    add_column :painteds, :paint, :string
    add_column :conditions, :wear, :string
  end
end
