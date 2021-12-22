class UsersController < ApplicationController
  def index 
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    redirect_to new_user_path
  end 

  def happy
    @users = User.all.where(happy: true)
  end

  def sad 
    @users = User.all.where(happy: false)
  end 

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to users_path
  end

  private 

  def user_params
    params.require(:user).permit(:name, :happy)
  end
end
