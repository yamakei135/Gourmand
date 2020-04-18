class PostController < ApplicationController
  def new
  end

  def create

      @post = Post.new(posted_by: current_user.id,
                        restaurant_name: params[:restaurant_name],
                        restaurant_adress: params[:restaurant_adress],
                        restaurant_adress_url: params[:restaurant_adress_url],
                        cost: params[:cost],
                        rating: params[:rating],
                        taste: params[:taste],
                        vibes: params[:vibes],
                        price: params[:price],
                        comment: params[:comment],
                        image: params[:image])


      @post.rating = (@post.taste.to_f + @post.vibes.to_f + @post.price.to_f)/3
      @post.rating = BigDecimal(@post.rating.to_s).floor(1).to_f # 1.24
      if @post.save
        redirect_to action: :index
        flash[:notice] = "投稿されました(^_-)-☆"
      else
        flash[:notice] ="投稿に失敗しました(; ･`д･´)"
        render action: :new
      end

  end

  def detail
  end

  def index
    @post = Post.find_by(posted_by: current_user.id)
    @posts = Post.where(posted_by: current_user.id)
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def update
    @post = Post.find_by(id: params[:id])
    @post.restaurant_name = params[:restaurant_name]
    @post.restaurant_adress = params[:restaurant_adress]
    @post.cost = params[:cost]
    @post.rating = params[:rating]
    @post.taste = params[:taste]
    @post.vibes = params[:vibes]
    @post.price = params[:price]
    @post.comment = params[:comment]

    @post.rating = (@post.taste.to_f + @post.vibes.to_f + @post.price.to_f)/3
    @post.rating = BigDecimal(@post.rating.to_s).floor(1).to_f # 1.24

    @post.save
    flash[:notice]="変更が反映されました"
    redirect_to action: :index
  end

  def detail
    @post = Post.find_by(id: params[:id])
  end
  
  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    flash[:notice] = "投稿が削除されました"
    redirect_to action: :index
  end
end

private

def post_params
  params.require(:session).permit(:restaurant_name,:restaurant_adress,:cost,:rating,:taste,:vibes,:price,:comment,:image)
end
