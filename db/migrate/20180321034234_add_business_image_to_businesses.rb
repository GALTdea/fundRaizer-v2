class AddBusinessImageToBusinesses < ActiveRecord::Migration[5.1]
  def change
    add_column :businesses, :business_image, :string
  end
end
