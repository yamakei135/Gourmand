class PostController < ApplicationController
  def new
  end

  def create
      @posts = Post.new(posted_by: current_user.name,
                        restaurant_name: params[:restaurant_name],
                        restaurant_adress: params[:restaurant_adress],
                        restaurant_adress_url: params[:restaurant_adress_url],
                        post_image_name: params[:post_image_name],
                        cost: params[:cost],
                        rating: params[:rating],
                        comment: params[:comment])

      if @posts.save
        redirect_to controller: 'mypage', action: 'profile',notice: "投稿されました🐼"
      else
        render action: :new
      end
  end

  def detail
  end
end
