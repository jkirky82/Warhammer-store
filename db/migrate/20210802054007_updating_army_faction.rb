class UpdatingArmyFaction < ActiveRecord::Migration[6.1]
  def change
    remove_column :army_factions, :faction
    add_column :army_factions, :name, :string
  end
end
