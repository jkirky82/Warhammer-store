class DeleteInProfile < ActiveRecord::Migration[6.1]
  def change
    remove_column :profiles, :user
    remove_column :profiles, :users_id
  end
end
