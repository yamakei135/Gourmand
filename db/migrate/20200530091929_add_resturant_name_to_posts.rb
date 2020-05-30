class AddResturantNameToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :restaurant_name, :string
  end
end
