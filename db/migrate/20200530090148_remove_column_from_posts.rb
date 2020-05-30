class RemoveColumnFromPosts < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :restaurant_name, :string
    remove_column :posts, :restaurant_adress, :text
    remove_column :posts, :restaurant_adress_url, :text
  end
end
