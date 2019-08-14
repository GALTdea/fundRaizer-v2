class CreateWaitlists < ActiveRecord::Migration[5.1]
  def change
    create_table :waitlists do |t|
      t.string :email
      t.string :name
      t.boolean :sponsor
      t.boolean :fundraiser
      t.boolean :supporter
      
      t.timestamps
    end
  end
end



