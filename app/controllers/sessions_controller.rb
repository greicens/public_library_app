class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user_params = params.require(:user).permit(:email, :password)
    @user = User.confirm(user_params)
    if @user
      login_url(@user)
      redirect_to @user
    else
      redirect_to login_path
    end
  end

  def destroy
  end
end
