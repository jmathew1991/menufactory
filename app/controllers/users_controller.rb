class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @sections = @user.sections
    @items = @user.items
  end
end