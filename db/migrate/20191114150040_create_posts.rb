class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :posted_by,null: false
      t.string :restaurant_name,null: false
      t.text :restaurant_adress
      t.text :restaurant_adress_url
      t.text :post_image_name
      t.integer :cost
      t.integer :rating,null: false
      t.text :comment,limit: 140,null:false
      t.timestamps
    end
  end
end
