class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authentication
  private
  def authentication
    @auth = User.find(session[:user_id]) if session[:user_id].present?
  end
  def check_if_logged_in
      redirect_to(root_path) if session[:user_id].nil?
  end
end