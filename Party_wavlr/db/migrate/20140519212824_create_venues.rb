class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.integer :latitude
      t.integer :longitude
      t.string :name
      t.string :kind

      t.timestamps
    end
  end
end
