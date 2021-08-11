class CreatePaint < ActiveRecord::Migration[6.1]
  def change
    create_table :paints do |t|
      t.string :name
      t.timestamps
    end
  end
end
