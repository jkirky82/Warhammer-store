class CreateArmyFactions < ActiveRecord::Migration[6.1]
  def change
    create_table :army_factions do |t|
      t.string :faction
      t.references :listing, null: false, foreign_key: true
      t.timestamps
    end
  end
end
