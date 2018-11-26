class AddDetailsToPhotographers < ActiveRecord::Migration[5.2]
  def change
    add_column :photographers, :address, :string
    add_column :photographers, :phone, :string
  end
end
