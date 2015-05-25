class CampingsitesController < ApplicationController
  before_action :set_campingsite, only: [:show, :edit, :update, :destroy]

  # GET /campingsites
  # GET /campingsites.json
  def index
    @campingsites = Campingsite.all
  end

  # GET /campingsites/1
  # GET /campingsites/1.json
  def show
  end

  # GET /campingsites/new
  def new
    @campingsite = Campingsite.new
  end

  # GET /campingsites/1/edit
  def edit
  end

  # POST /campingsites
  # POST /campingsites.json
  def create
    @campingsite = Campingsite.new(campingsite_params)

    respond_to do |format|
      if @campingsite.save
        format.html { redirect_to @campingsite, notice: 'Campingsite was successfully created.' }
        format.json { render :show, status: :created, location: @campingsite }
      else
        format.html { render :new }
        format.json { render json: @campingsite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /campingsites/1
  # PATCH/PUT /campingsites/1.json
  def update
    respond_to do |format|
      if @campingsite.update(campingsite_params)
        format.html { redirect_to @campingsite, notice: 'Campingsite was successfully updated.' }
        format.json { render :show, status: :ok, location: @campingsite }
      else
        format.html { render :edit }
        format.json { render json: @campingsite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /campingsites/1
  # DELETE /campingsites/1.json
  def destroy
    @campingsite.destroy
    respond_to do |format|
      format.html { redirect_to campingsites_url, notice: 'Campingsite was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_campingsite
      @campingsite = Campingsite.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def campingsite_params
      params.require(:campingsite).permit(:name, :address, :features, pitch_ids: [], owner_ids: [])
    end
end
