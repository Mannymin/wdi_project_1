class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.int :id
      t.string :title
      t.int :latitude
      t.int :longitude

      t.timestamps
    end
  end
end
