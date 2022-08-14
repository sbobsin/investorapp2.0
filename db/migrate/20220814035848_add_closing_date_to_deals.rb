class AddClosingDateToDeals < ActiveRecord::Migration[6.0]
  def change
    add_column :deals, :closing_date, :date
  end
end
