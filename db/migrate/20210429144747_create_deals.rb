class CreateDeals < ActiveRecord::Migration[6.0]
  def change
    create_table :deals do |t|
      t.string :photo
      t.string :map
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :oa
      t.string :pro_forma


      t.timestamps
    end
  end
end
