# frozen_string_literal: true

class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?, :new_session

  private

  def authenticate_user!
    return if current_user

    cookies[:requested_page] = request.url
    redirect_to login_path, alert: :'Log in or register, please!'
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def logged_in?
    current_user.present?
  end

  def new_session
    session[:user_id] = @user.id
  end
end
