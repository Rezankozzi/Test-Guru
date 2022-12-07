class TestPassagesController < ApplicationController
  # before_action :set_test_passage, only: %i[ show edit update destroy ]

  # GET /testpassages or /testpassages.json
  # def index
  #   @test_passages = TestPassage.all
  # end

  # GET /testpassages/1 or /testpassages/1.json
  # def show
  # end

  # GET /testpassages/new
  def new
    @test_passage = TestPassage.new (test_id: @test.id)
  end

  # GET /testpassages/1/edit
  # def edit
  # end

  # POST /testpassages or /testpassages.json
  # def create
  #   @testpassage = TestPassage.new(testpassage_params)
  #
  #   # respond_to do |format|
  #   #   if @testpassage.save
  #   #     format.html { redirect_to testpassage_url(@testpassage), notice: "TestPassage was successfully created." }
  #   #     format.json { render :show, status: :created, location: @testpassage }
  #   #   else
  #   #     format.html { render :new, status: :unprocessable_entity }
  #   #     format.json { render json: @testpassage.errors, status: :unprocessable_entity }
  #   #   end
  #   # end
  # end

  # PATCH/PUT /testpassages/1 or /testpassages/1.json
  # def update
  #   respond_to do |format|
  #     if @testpassage.update(testpassage_params)
  #       format.html { redirect_to testpassage_url(@testpassage), notice: "TestPassage was successfully updated." }
  #       format.json { render :show, status: :ok, location: @testpassage }
  #     else
  #       format.html { render :edit, status: :unprocessable_entity }
  #       format.json { render json: @testpassage.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # DELETE /testpassages/1 or /testpassages/1.json
  # def destroy
  #   @testpassage.destroy
  #
  #   respond_to do |format|
  #     format.html { redirect_to testpassages_url, notice: "TestPassage was successfully destroyed." }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testpassage
      @testpassage = TestPassage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def find_test
      @test = Test.find(params[:test_id])
    end
end
