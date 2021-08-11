class CreatePayment < ActiveRecord::Migration[6.1]
  def change
    create_table :payments do |t|
      t.string :payment_intent_id
      t.string :recipt_url
      t.references :user, index: true, foreign_key: true
      t.references :listing, index: true, foreign_key: true
      t.timestamps
    end
  end
end
