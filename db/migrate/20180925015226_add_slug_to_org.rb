class AddSlugToOrg < ActiveRecord::Migration[5.1]
  def change
  	add_column :orgs, :slug, :string
    add_index :orgs, :slug, unique: true
  end
end
