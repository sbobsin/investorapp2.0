class DropCapitalDistributions < ActiveRecord::Migration[6.0]
  def change
    drop_table :capital_distributions
  end
end
