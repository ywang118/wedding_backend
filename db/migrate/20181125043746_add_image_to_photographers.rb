class AddImageToPhotographers < ActiveRecord::Migration[5.2]
  def change
    add_column :photographers, :image, :string
  end
end
