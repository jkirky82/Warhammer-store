class CreateCondition < ActiveRecord::Migration[6.1]
  def change
    create_table :conditions do |t|
      t.name
      t.timestamps
    end
  end
end