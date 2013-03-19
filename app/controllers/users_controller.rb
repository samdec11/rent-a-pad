class UsersController < ApplicationController
  before_filter :ensure_logged_in, :except => [:new, :create]
  def index
    @users = User.all
  end
  def show
    @user = User.find(params[:id])
  end
  def new
    @user = User.new
  end
  def edit
    @user = User.find(params[:id])
  end
  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to(root_path)
    else
      render :new
    end
  end
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      redirect_to(@user)
    else
      render :new
    end
  end
  def destroy
    @user = User.find(params[:id])
    @user.destroy
  end
end
