class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :entry_id
      t.string :content
      t.integer :rating

      t.timestamps null: false
    end
  end
end
