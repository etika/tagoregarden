class CreateSchemes < ActiveRecord::Migration
  def change
    create_table :schemes do |t|
      t.integer :entry_id
      t.text :content
      t.datetime :from_date
      t.datetime :end_date 
      t.integer :category_id
      t.timestamps null: false
    end
  end
end
