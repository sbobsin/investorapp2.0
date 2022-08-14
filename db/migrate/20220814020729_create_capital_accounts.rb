class CreateCapitalAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :capital_accounts do |t|
      t.float :initial_balance
      t.float :current_balance
      t.integer :user_id
      t.integer :deal_id

      t.timestamps
    end
  end
end
