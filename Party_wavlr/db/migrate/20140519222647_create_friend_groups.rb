class CreateFriendGroups < ActiveRecord::Migration
  def change
    create_table :friend_groups do |t|
      t.integer :user_id

      t.timestamps
    end
  end
end
