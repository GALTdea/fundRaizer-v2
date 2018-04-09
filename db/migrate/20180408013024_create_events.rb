class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.date :date
      t.text :about
      t.string :address
      t.references :business, foreign_key: true
      t.references :org, foreign_key: true

      t.timestamps
    end
  end
end
