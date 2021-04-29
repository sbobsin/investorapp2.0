class AddMobilePhoneToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :mobile_phone, :string
  end
end
