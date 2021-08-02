class AdddingRefToListing < ActiveRecord::Migration[6.1]
  def change
    add_reference :listings, :paint, foreign_key:true
    add_reference :listings, :condition, foreign_key:true
  end
end
