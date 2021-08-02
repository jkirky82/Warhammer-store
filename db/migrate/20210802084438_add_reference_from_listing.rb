class AddReferenceFromListing < ActiveRecord::Migration[6.1]
  def change
    add_reference :listings, :painted, foreign_key:true
    add_reference :listings, :condition, foreign_key:true
  end
end
