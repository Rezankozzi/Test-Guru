# frozen_string_literal: true

class TestsController < ApplicationController
  before_action :authenticate_user!, only: %i[show start]
  before_action :set_test, only: %i[show start]

  def index
    @tests = Test.all
  end

  def show; end

  def start
    @user = User.all.sample
    @user.tests.push(@test)
    redirect_to @user.test_passage(@test)
  end

  def set_test
    @test = Test.find(params[:id])
  end
end

