class CreateEventPages < ActiveRecord::Migration[5.1]
  def change
    create_table :event_pages do |t|
      t.string :event_name
      t.string :address
      t.date :date_start
      t.date :date_end
      t.text :about
      t.integer :org_id
      t.integer :event_id
      t.references :business, foreign_key: true
      t.references :org, foreign_key: true
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
