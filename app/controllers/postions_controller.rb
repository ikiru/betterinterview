class PostionsController < ApplicationController
  before_action :set_postion, only: [:show, :edit, :update, :destroy]

  # GET /postions
  # GET /postions.json
  def index
    @postions = Postion.all
  end

  # GET /postions/1
  # GET /postions/1.json
  def show
  end

  # GET /postions/new
  def new
    @postion = Postion.new
  end

  # GET /postions/1/edit
  def edit
  end

  # POST /postions
  # POST /postions.json
  def create
    @postion = Postion.new(postion_params)

    respond_to do |format|
      if @postion.save
        format.html { redirect_to @postion, notice: 'Postion was successfully created.' }
        format.json { render :show, status: :created, location: @postion }
      else
        format.html { render :new }
        format.json { render json: @postion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /postions/1
  # PATCH/PUT /postions/1.json
  def update
    respond_to do |format|
      if @postion.update(postion_params)
        format.html { redirect_to @postion, notice: 'Postion was successfully updated.' }
        format.json { render :show, status: :ok, location: @postion }
      else
        format.html { render :edit }
        format.json { render json: @postion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /postions/1
  # DELETE /postions/1.json
  def destroy
    @postion.destroy
    respond_to do |format|
      format.html { redirect_to postions_url, notice: 'Postion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_postion
      @postion = Postion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def postion_params
      params.require(:postion).permit(:position)
    end
end
