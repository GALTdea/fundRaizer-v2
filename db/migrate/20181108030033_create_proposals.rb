class CreateProposals < ActiveRecord::Migration[5.1]
  def change
    create_table :proposals do |t|
      t.string :description
      t.string :reach
      t.string :amount_goal
      t.string :location
      t.date :date
      t.references :org, foreign_key: true
      # t.references :bid, foreign_key: true

      t.timestamps
    end
  end
end
