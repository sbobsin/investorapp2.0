class CreateCaptialContributions < ActiveRecord::Migration[6.0]
  def change
    create_table :captial_contributions do |t|
      t.integer :user_id
      t.integer :original_contribution_amount
      t.integer :current_capital_balance
      t.integer :deal_id
      t.integer :capital_account_id


      t.timestamps
    end
  end
end
