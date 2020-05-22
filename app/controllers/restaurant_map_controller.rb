class RestaurantMapController < ApplicationController
  def map
    @address = "味覚園北口店"
    @post = Post.find_by(id: params[:id])
  end


end
