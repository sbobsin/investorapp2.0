class CreateDistributions < ActiveRecord::Migration[6.0]
  def change
    create_table :distributions do |t|
      t.string :distribution_type
      t.date :distribution_date
      t.integer :user_id
      t.integer :capital_account_id
      t.belongs_to :deal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
