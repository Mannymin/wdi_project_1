class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.int :id
      t.int :venue_id
      t.string :title

      t.timestamps
    end
  end
end
