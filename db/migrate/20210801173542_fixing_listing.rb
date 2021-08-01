class FixingListing < ActiveRecord::Migration[6.1]
  def change
    remove_column :army_factions, :listing_id
    add_reference :listings, :army_faction, foreign_key:true
    
  end
end
