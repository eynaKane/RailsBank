class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.references :user
      t.references :account
      t.string :transaction_name
      t.integer :amount_cents
      t.integer :current_amount_cents
      t.timestamps null: false
    end
  end
end
