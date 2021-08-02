class AddColumnToPaint < ActiveRecord::Migration[6.1]
  def change
    add_column :paints, :name, :string
  end
end
