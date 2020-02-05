class AddratingToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :taste, :integer
    add_column :posts, :vibes, :integer
    add_column :posts, :price, :integer
  end
end
