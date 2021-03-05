class UsersController < ApplicationController
  before_action :set_user, only: [:show]

  def index
    @users = User.order('created_at ASC')
    render json: @users
  end

  def show
    render json: @user
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :image)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
