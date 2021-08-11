class CreateProfile < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.string :street_address
      t.string :street_number
      t.string :suburb
      t.string :state 
      t.integer :postcode
      t.references :user, index: true, foreign_key: true
      t.timestamps
    end
  end
end
