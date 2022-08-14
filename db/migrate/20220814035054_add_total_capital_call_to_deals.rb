class AddTotalCapitalCallToDeals < ActiveRecord::Migration[6.0]
  def change
    add_column :deals, :total_capital_call, :float
  end
end
