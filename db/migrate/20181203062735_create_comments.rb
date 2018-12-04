class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :description
      t.date :date
      t.integer :user_id
      t.integer :photographer_id

      t.timestamps
    end
  end
end
