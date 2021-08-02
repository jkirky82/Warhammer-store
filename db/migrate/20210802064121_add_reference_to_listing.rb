class AddReferenceToListing < ActiveRecord::Migration[6.1]
  def change
    add_reference :listings, :armyfaction, foreign_key:true
  end
end
