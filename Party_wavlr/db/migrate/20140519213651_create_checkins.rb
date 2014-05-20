class CreateCheckins < ActiveRecord::Migration
  def change
    create_table :checkins do |t|
      t.boolean :reservation
      t.boolean :attendent
      t.text :comment

      t.integer :event_id
      t.integer :user_id

      t.timestamps
    end
  end
end
