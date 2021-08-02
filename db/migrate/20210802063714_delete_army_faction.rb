class DeleteArmyFaction < ActiveRecord::Migration[6.1]
  def change
    remove_column :listings, :army_faction_id
    drop_table :army_factions
  end
end
