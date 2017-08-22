class InterviewTypesController < ApplicationController
  before_action :set_interview_type, only: [:show, :edit, :update, :destroy]

  # GET /interview_types
  # GET /interview_types.json
  def index
    @interview_types = InterviewType.all
  end

  # GET /interview_types/1
  # GET /interview_types/1.json
  def show
  end

  # GET /interview_types/new
  def new
    @interview_type = InterviewType.new
  end

  # GET /interview_types/1/edit
  def edit
  end

  # POST /interview_types
  # POST /interview_types.json
  def create
    @interview_type = InterviewType.new(interview_type_params)

    respond_to do |format|
      if @interview_type.save
        format.html { redirect_to @interview_type, notice: 'Interview type was successfully created.' }
        format.json { render :show, status: :created, location: @interview_type }
      else
        format.html { render :new }
        format.json { render json: @interview_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /interview_types/1
  # PATCH/PUT /interview_types/1.json
  def update
    respond_to do |format|
      if @interview_type.update(interview_type_params)
        format.html { redirect_to @interview_type, notice: 'Interview type was successfully updated.' }
        format.json { render :show, status: :ok, location: @interview_type }
      else
        format.html { render :edit }
        format.json { render json: @interview_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /interview_types/1
  # DELETE /interview_types/1.json
  def destroy
    @interview_type.destroy
    respond_to do |format|
      format.html { redirect_to interview_types_url, notice: 'Interview type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_interview_type
      @interview_type = InterviewType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def interview_type_params
      params.require(:interview_type).permit(:type)
    end
end
