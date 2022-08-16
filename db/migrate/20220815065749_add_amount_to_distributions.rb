class AddAmountToDistributions < ActiveRecord::Migration[6.0]
  def change
    add_column :distributions, :amount, :float
  end
end
