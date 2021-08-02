class CreatePainteds < ActiveRecord::Migration[6.1]
  def change
    create_table :painteds do |t|

      t.timestamps
    end
  end
end
