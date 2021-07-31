class CreateListings < ActiveRecord::Migration[6.1]
  def change
    create_table :listings do |t|
      t.string :title
      t.text :description 
      t.float :price
      t.boolean :availability
      t.timestamps
    end
  end
end
