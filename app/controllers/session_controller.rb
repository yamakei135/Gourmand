class SessionController < ApplicationController

  def form
  end

  def login
      @user = User.find_by(email: session_params[:email])

      if @user&.authenticate(session_params[:password])
        session[:user_id] = @user.id
        flash[:notice] = "ログインしました！"
        redirect_to('/mypage/profile')
      else
        render :form
      end

  end

  def logout
      reset_session
      flash[:notice] = "ログアウトしました！"
      redirect_to('/session/login')
  end

  private

  def session_params
    params.require(:session).permit(:email, :password)
  end


end
