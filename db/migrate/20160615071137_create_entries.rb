class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :latitude
      t.string :longitude
      t.string :address
      t.string :city
      t.string :state
      t.string :country
      t.string :pincode
      t.string :other_details
      t.integer :category_id
      t.integer :owner_id

      t.timestamps null: false
    end
  end
end
