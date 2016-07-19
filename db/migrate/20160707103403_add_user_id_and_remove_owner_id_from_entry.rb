class AddUserIdAndRemoveOwnerIdFromEntry < ActiveRecord::Migration
  def change
    add_column :entries, :user_id, :integer
    remove_column :entries, :owner_id, :integer
  end
end
