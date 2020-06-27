class AddColumnToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :restaurant_adress, :string
  end
end
