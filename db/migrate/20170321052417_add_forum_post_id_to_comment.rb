class AddForumPostIdToComment < ActiveRecord::Migration
  def change
    add_column :comments, :forum_post_id, :integer
  end
end
