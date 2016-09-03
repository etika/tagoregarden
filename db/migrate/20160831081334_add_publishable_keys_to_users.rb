class AddPublishableKeysToUsers < ActiveRecord::Migration
     def change
      add_column :users, :publishable_key, :string
      add_column :users, :pay_provider, :string
      add_column :users, :pay_uid, :string
      add_column :users, :access_code, :string
    end
end
