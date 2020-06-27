class RestaurantMapController < ApplicationController
  def map
    @address = "味覚園北口店"
    @post = Post.limit(1).order('id')
    @posts = Post.where(posted_by: current_user.id)
  end
end
