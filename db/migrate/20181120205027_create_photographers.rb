class CreatePhotographers < ActiveRecord::Migration[5.2]
  def change
    create_table :photographers do |t|
      t.string :name
      t.integer :avg_rating
      t.string :about
      t.string :photo_video
      t.string :style
      t.string :shoot_type

      t.timestamps
    end
  end
end
