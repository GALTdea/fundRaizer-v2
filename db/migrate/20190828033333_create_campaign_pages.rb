class CreateCampaignPages < ActiveRecord::Migration[5.1]
  def change
    create_table :campaign_pages do |t|
      t.string :title
      t.string :organized_by
      t.text :deal_info
      t.string :in_bene_of
      t.text :story
      t.string :deal_1
      t.string :deal_2
      t.string :deal_3
      t.string :deal_4
      t.string :deal_5
      t.string :organizer_address
      t.integer :deals_sold
      t.string :buyers
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
