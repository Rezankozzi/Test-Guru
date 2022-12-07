# frozen_string_literal: true

class TestsController < ApplicationController
  before_action :set_test, only: %i[show start]
  def index
    @tests = Test.all
  end

  def show
    # @test = Test.find(params[:id])
  end

  def start
    # @test = Test.find(params[:id])
  end

  def set_test
    @test = Test.find(params[:id])
  end
end

