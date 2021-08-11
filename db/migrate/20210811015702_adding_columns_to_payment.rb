class AddingColumnsToPayment < ActiveRecord::Migration[6.1]
  def change
    add_column :payments, :payment_intent_id, :string
    add_column :payments, :receipt_url, :string
    remove_column :payments, :price
    add_reference :payments, :listing, foreign_key:true
  end
end
