class QuestionCatagoriesController < ApplicationController
  before_action :set_question_catagory, only: [:show, :edit, :update, :destroy]

  # GET /question_catagories
  # GET /question_catagories.json
  def index
    @question_catagories = QuestionCatagory.all
  end

  # GET /question_catagories/1
  # GET /question_catagories/1.json
  def show
  end

  # GET /question_catagories/new
  def new
    @question_catagory = QuestionCatagory.new
  end

  # GET /question_catagories/1/edit
  def edit
  end

  # POST /question_catagories
  # POST /question_catagories.json
  def create
    @question_catagory = QuestionCatagory.new(question_catagory_params)

    respond_to do |format|
      if @question_catagory.save
        format.html { redirect_to @question_catagory, notice: 'Question catagory was successfully created.' }
        format.json { render :show, status: :created, location: @question_catagory }
      else
        format.html { render :new }
        format.json { render json: @question_catagory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /question_catagories/1
  # PATCH/PUT /question_catagories/1.json
  def update
    respond_to do |format|
      if @question_catagory.update(question_catagory_params)
        format.html { redirect_to @question_catagory, notice: 'Question catagory was successfully updated.' }
        format.json { render :show, status: :ok, location: @question_catagory }
      else
        format.html { render :edit }
        format.json { render json: @question_catagory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /question_catagories/1
  # DELETE /question_catagories/1.json
  def destroy
    @question_catagory.destroy
    respond_to do |format|
      format.html { redirect_to question_catagories_url, notice: 'Question catagory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question_catagory
      @question_catagory = QuestionCatagory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_catagory_params
      params.require(:question_catagory).permit(:catagory)
    end
end
