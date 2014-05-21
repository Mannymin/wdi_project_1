class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :like
      t.string :comment
      t.integer :favorite_id
      t.integer :user_id

      t.timestamps
    end
  end
end
