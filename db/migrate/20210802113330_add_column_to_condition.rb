class AddColumnToCondition < ActiveRecord::Migration[6.1]
  def change
    add_column :conditions, :name, :string
  end
end
