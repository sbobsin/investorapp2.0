class AddEquityPercentagesToDeals < ActiveRecord::Migration[6.0]
  def change
    add_column :deals, :promote_equity_percentage, :float
    add_column :deals, :investor_equity_percentage, :float
  end
end
