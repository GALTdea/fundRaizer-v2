class CreateBids < ActiveRecord::Migration[5.1]
  def change
    create_table :bids do |t|
      t.text :description
      t.integer :amount
      t.references :business, foreign_key: true
      t.references :proposal, foreign_key: true

      t.timestamps
    end
  end
end
