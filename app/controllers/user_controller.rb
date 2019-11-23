class UserController < ApplicationController

  def registration
  end

  def create
    @user = User.new(name: params[:name], email: params[:email], password: params[:password])
    # 保存が成功したかどうかで条件分岐する
    @user.save
    if @user.save
      flash[:notice] = "ユーザー登録が完了しました"
      redirect_to("/mypage/profile")
    else
      flash[:notice] = "ユーザー登録に失敗しました"
      render("/user/registration")
    end
  end

  def logout
  end
end
