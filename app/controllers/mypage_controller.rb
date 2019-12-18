class MypageController < ApplicationController

  def profile
    @post = Post.find_by(posted_by: current_user.id)
    @posts = Post.where(posted_by: current_user.id)
    @user = User.find_by(id: current_user.id)
  end

  def edit
    @user = User.find_by(id: current_user.id)
  end

end
