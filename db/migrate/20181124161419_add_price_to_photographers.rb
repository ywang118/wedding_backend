class AddPriceToPhotographers < ActiveRecord::Migration[5.2]
  def change
    add_column :photographers, :price, :integer
  end
end
