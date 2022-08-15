class AddParamsToCapitalDistributions < ActiveRecord::Migration[6.0]
  def change
    add_column :capital_distributions, :preferred_return, :float
    add_column :capital_distributions, :deal_id, :integer
    add_column :capital_distributions, :user_id, :integer
  end
end
