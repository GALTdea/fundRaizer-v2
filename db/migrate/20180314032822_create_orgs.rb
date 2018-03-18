class CreateOrgs < ActiveRecord::Migration[5.1]
  def change
    create_table :orgs do |t|
      t.string :name
      t.string :phone_number
      t.string :manager
      t.string :org_type
      t.string :address
      t.string :city
      t.string :region
      t.string :zip_code
      t.text :about

      t.timestamps
    end
  end
end
