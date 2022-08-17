class AddEstimatedValueToProperties < ActiveRecord::Migration[6.0]
  def change
    add_column :properties, :estimated_value, :integer
    add_column :properties, :loan_balance, :integer
    add_column :properties, :selling_costs, :decimal
  end
end
