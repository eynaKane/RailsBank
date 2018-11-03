class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.string :account_name
      t.timestamps null: false
    end
    add_index :accounts, :account_name, unique: true
  end
end
