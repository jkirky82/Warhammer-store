class DeleteAndAddToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    remove_column :profiles, :user_id
    remove_column :locations, :profile_id
    drop_table :profiles
    drop_table :locations
  end
end
