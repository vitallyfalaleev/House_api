class UsersController < ApplicationController
  before_action :authenticate_user!, except: ["index", "show"]

  def index
    @user = User.all
    render json: @user
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end
end
