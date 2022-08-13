class AddParamsToProperties < ActiveRecord::Migration[6.0]
  def change
    add_column :properties, :state, :string
    add_column :properties, :zip, :integer
    add_column :properties, :deal_id, :integer
    add_column :properties, :unit_count, :integer
  end
end
