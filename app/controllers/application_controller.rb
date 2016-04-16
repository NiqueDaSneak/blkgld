class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
  	@current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def user_logged_in?
  	!!current_user
  end

  def current_business
    @current_business ||= Business.find_by(id: session[:business_id]) if session[:business_id]
  end

  def business_logged_in?
    !!current_business
  end

  helper_method :current_user, :user_logged_in?, :current_business, :business_logged_in?
end
