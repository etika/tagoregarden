class CreateUpdates < ActiveRecord::Migration
  def change
    create_table :updates do |t|
      t.string :topic
      t.text :details

      t.timestamps null: false
    end
  end
end
