class CreatePainteds < ActiveRecord::Migration[6.1]
  def change
    create_table :painteds do |t|
      t.boolean :painted
      t.timestamps
    end
  end
end
