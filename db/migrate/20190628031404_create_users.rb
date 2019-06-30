class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.boolean :admin, default: false
      t.string :name
      t.string :address
      t.string :city
      t.string :region
      t.string :zip_code

      t.timestamps
    end
  end
end

