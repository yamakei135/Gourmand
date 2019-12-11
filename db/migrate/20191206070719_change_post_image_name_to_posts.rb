class ChangePostImageNameToPosts < ActiveRecord::Migration[5.2]
  def change
    change_column :posts,:post_image_name,:string
  end
end
