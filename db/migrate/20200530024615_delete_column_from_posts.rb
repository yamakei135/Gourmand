class DeleteColumnFromPosts < ActiveRecord::Migration[5.2]
  def change
    remove_column :post_image_name, :restaurant_adress_url, :restaurant_adress
  end
end
