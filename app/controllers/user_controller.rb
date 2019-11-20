class UserController < ApplicationController
  def login
  end

  def registration
    @user = User.new
  end

  def create
    @user = User.new(name: params[:name], email: params[:email], password: params[:password])
    # 保存が成功したかどうかで条件分岐する
    if @user.save
      flash[:notice] = "ユーザー登録が完了しました"
      redirect_to("/users/#{@user.id}")
    else
      flash[:notice] = "ユーザー登録に失敗しました"
      render("users/registration")
    end
  end
end
