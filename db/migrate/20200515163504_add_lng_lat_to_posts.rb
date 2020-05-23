class AddLngLatToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :location_lat, :float
    add_column :posts, :location_lng, :float
  end
end
