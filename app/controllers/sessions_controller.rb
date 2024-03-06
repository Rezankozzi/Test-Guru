# frozen_string_literal: true

class SessionsController < ApplicationController
  def new; end

  def start; end

  def create
    if find_user&.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to cookies[:requested_page] || root_path
    else
      flash.now[:alert] = 'Check your <E_mail> and <Password> please!'
      render :new
    end
  end

  def delete
    session[:user_id] = nil
    redirect_to tests_path
  end

  private

  def find_user
    @user = User.find_by(e_mail: params[:e_mail])
  end
end
