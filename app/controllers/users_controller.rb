class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome #{@user.name}"
    else
      render 'new'
    end
  end

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
