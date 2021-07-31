class CreateAddEmailToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :email, :string
    remove_column :profiles, :email
  end
end
