class CreateArmyfactions < ActiveRecord::Migration[6.1]
  def change
    create_table :armyfactions do |t|
      t.string :name
      t.timestamps
    end
  end
end
