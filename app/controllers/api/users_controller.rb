class Api::UsersController < ApplicationController

  def create
    @user = User.new(user_params)
    if @user.save
      login(@user)
    else
      render json: @user.errors.full_messages, status: 422
    end
  end

  def show
    @user = User.find(params[:id])
    unless @user
      render @user.errors.full_messages, status: 404
    end
  end

  def search
    if params[:query].empty?
      render json: {}
    else
      @users = User.where("username LIKE '%#{params[:query]}%'")
      render :index
    end
  end


  private
  def user_params
    params.require(:user).permit(:username, :name, :password,:img_url)
  end
end
