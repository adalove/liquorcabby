class UsersController < ApplicationController
  before_filter :check_if_logged_in, :except => [:new, :create]
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(params[:user])
  end

  def show
    @user = User.find(params[:id])
  end

  private
  def check_if_logged_in
    redirect_to(root_path) if @auth.nil?
  end
end


