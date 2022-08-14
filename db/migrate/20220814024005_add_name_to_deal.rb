class AddNameToDeal < ActiveRecord::Migration[6.0]
  def change
    add_column :deals, :name, :string
  end
end
