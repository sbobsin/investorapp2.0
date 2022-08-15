class AddTypeToCapitalDistributions < ActiveRecord::Migration[6.0]
  def change
    add_column :capital_distributions, :distribution_type, :string
  end
end
