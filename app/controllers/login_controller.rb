class LoginController < ApplicationController

  def new

  end

  def create
    user = User.authenticate(params[:email], params[:password])
    if user
      session[:user_id] = user.id
      case user.role
        when 'student'
          redirect_to :appointments
        else
          redirect_to :logout
        end
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to login_path
  end

end
