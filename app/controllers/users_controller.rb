class UsersController < ApplicationController
  # before_action: :set_current_user
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    @current_user = @user
    redirect_to user_tasks_lists
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to users_path(@user)
  end

  private
  def user_params
    params.require(:user).permit(:username, :password, :email)
  end

end
