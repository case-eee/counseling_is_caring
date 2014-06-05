class LoginController < ApplicationController

  def new

  end

  def create
     user = User.authenticate(params[:email], params[:password])
    if user
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      render :new
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to login_path
  end


end

