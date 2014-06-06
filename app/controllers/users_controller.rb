class UsersController < ApplicationController

  def new

  end


  def create
      # raise params.inspect
  user = User.new(user_params)
  user.password = params[:user][:password_hash]
    if user.save
      redirect_to :root
    else
      redirect_to :signup
    end
  end

private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :cohort, :role)
  end

end






