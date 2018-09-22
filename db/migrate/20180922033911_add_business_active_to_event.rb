class AddBusinessActiveToEvent < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :business_active, :boolean, default: false
  end
end
