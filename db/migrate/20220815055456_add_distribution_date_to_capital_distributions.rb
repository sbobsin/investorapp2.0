class AddDistributionDateToCapitalDistributions < ActiveRecord::Migration[6.0]
  def change
    add_column :capital_distributions, :distribution_date, :date
  end
end
