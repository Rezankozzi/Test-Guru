# frozen_string_literal: true

class SessionsController < ApplicationController
  def new; end

  def start; end

  def create
    @user = User.find_by(email: params[:email])
    if @user&.authenticate(params[:password])
      new_session
      redirect_to cookies[:requested_page] || root_path
    else
      flash.now[:alert] = 'Check your <Email> and <Password> please!'
      render :new
    end
  end

  def delete
    session[:user_id] = nil
    redirect_to root_path
  end
end
