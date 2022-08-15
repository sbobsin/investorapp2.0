class CreateCapitalDistributions < ActiveRecord::Migration[6.0]
  def change
    create_table :capital_distributions do |t|
      t.float :return_of_capital
      t.belongs_to :capital_account, null: false, foreign_key: true

      t.timestamps
    end
  end
end
