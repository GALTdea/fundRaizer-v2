class CreateBusinesses < ActiveRecord::Migration[5.1]
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :phone_number
      t.string :manager
      t.string :bus_type
      t.string :address_1
      t.string :city
      t.string :region
      t.string :zip_code

      t.timestamps
    end
  end
end
