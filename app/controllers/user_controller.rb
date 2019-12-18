class UserController < ApplicationController

  def registration
  end

  def create
    @user = User.new(name: params[:name], email: params[:email], password: params[:password], profile_image: params[:image])
    # 保存が成功したかどうかで条件分岐する
    @user.save
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "ユーザー登録が完了しました"
      redirect_to("/mypage/profile")
    else
      flash[:notice] = "ユーザー登録に失敗しました"
      render("/user/registration")
    end
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.name = params[:name]
    @user.email = params[:email]
    @user.image = params[:image]
    @user.save
    flash[:notice]="変更が反映されました"
    redirect_to("/mypage/profile")
  end

  def logout
  end

end

private

def user_params
  params.permit(:name,:email,:password,:image)
end
