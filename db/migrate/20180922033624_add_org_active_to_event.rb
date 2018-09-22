class AddOrgActiveToEvent < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :org_active, :boolean, default: true
  end
end


