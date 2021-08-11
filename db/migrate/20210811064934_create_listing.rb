class CreateListing < ActiveRecord::Migration[6.1]
  def change
    create_table :listings do |t|
      t.string :title
      t.text :description
      t.float :price 
      t.boolean :availability
      t.references :user, index: true, foreign_key: true
      t.references :armyfaction, index: true, foreign_key: true
      t.references :paint, index: true, foreign_key: true
      t.references :condition, index: true, foreign_key: true
      t.timestamps
    end
  end
end
