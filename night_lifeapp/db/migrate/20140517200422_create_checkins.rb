class CreateCheckins < ActiveRecord::Migration
  def change
    create_table :checkins do |t|
      t.int :id
      t.int :event_id
      t.string :reserve
      t.string :attendent
      t.text :commend

      t.timestamps
    end
  end
end
