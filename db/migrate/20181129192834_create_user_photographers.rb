class CreateUserPhotographers < ActiveRecord::Migration[5.2]
  def change
    create_table :user_photographers do |t|
      t.integer :user_id
      t.integer :photographer_id

      t.timestamps
    end
  end
end
