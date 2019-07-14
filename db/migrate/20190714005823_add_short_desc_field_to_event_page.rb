class AddShortDescFieldToEventPage < ActiveRecord::Migration[5.1]
  def change
    add_column :event_pages, :short_desc, :string
  end
end
