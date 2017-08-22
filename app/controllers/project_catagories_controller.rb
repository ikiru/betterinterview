class ProjectCatagoriesController < ApplicationController
  before_action :set_project_catagory, only: [:show, :edit, :update, :destroy]

  # GET /project_catagories
  # GET /project_catagories.json
  def index
    @project_catagories = ProjectCatagory.all
  end

  # GET /project_catagories/1
  # GET /project_catagories/1.json
  def show
  end

  # GET /project_catagories/new
  def new
    @project_catagory = ProjectCatagory.new
  end

  # GET /project_catagories/1/edit
  def edit
  end

  # POST /project_catagories
  # POST /project_catagories.json
  def create
    @project_catagory = ProjectCatagory.new(project_catagory_params)

    respond_to do |format|
      if @project_catagory.save
        format.html { redirect_to @project_catagory, notice: 'Project catagory was successfully created.' }
        format.json { render :show, status: :created, location: @project_catagory }
      else
        format.html { render :new }
        format.json { render json: @project_catagory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_catagories/1
  # PATCH/PUT /project_catagories/1.json
  def update
    respond_to do |format|
      if @project_catagory.update(project_catagory_params)
        format.html { redirect_to @project_catagory, notice: 'Project catagory was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_catagory }
      else
        format.html { render :edit }
        format.json { render json: @project_catagory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_catagories/1
  # DELETE /project_catagories/1.json
  def destroy
    @project_catagory.destroy
    respond_to do |format|
      format.html { redirect_to project_catagories_url, notice: 'Project catagory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_catagory
      @project_catagory = ProjectCatagory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_catagory_params
      params.require(:project_catagory).permit(:catagory)
    end
end
