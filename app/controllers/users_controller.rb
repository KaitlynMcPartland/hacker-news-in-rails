class UsersController < ApplicationController
  def index
  @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def create

    @user = User.create(params.require(:user).permit(:name, :email, :password))
    redirect_to @user
  end

  def new
  end

end
