class CreateFriendgroups < ActiveRecord::Migration
  def change
    create_table :friendgroups do |t|
      t.int :user_id

      t.timestamps
    end
  end
end
