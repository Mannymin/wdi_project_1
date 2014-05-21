class CreateFavoriteLists < ActiveRecord::Migration
  def change
    create_table :favorite_lists do |t|
      t.integer :photo_id

      t.timestamps
    end
  end
end
