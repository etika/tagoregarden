class AddActivationTokenAndPhoneVerified < ActiveRecord::Migration
  def up
      add_column :users, :activation_token, :string
      add_column :users, :phone_verified, :boolean,default: false
  end
  def down
    remove_column :users, :activation_token, :string
    remove_column :users, :phone_verified, :boolean
  end
end
