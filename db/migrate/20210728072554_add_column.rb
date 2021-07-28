class AddColumn < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :username, :string
    add_reference :profiles, :users, index: true
  end
end
