class CreateSponsors < ActiveRecord::Migration[5.1]
  def change
    create_table :sponsors do |t|
      t.string :company_name
      t.string :business_type
      t.text :about
      t.string :address
      t.string :city
      t.string :region
      t.string :zip_code
      t.string :manager

      t.timestamps
    end
  end
end
