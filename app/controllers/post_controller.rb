class PostController < ApplicationController
  def new
  end

  def create
      @post = Post.new(posted_by: "test",
                        restaurant_name: params[:restaurant_name],
                        restaurant_adress: params[:restaurant_adress],
                        restaurant_adress_url: params[:restaurant_adress_url],
                        cost: params[:cost],
                        rating: params[:rating],
                        comment: params[:comment])


      if @post.save
        redirect_to action: :index
        flash[:notice] = "投稿されました🐼"
      else
        render action: :new
      end

  end

  def detail
  end

  def index
    @posts = Post.all
  end
end
