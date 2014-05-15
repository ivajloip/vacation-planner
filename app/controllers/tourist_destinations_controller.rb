class TouristDestinationsController < ApplicationController
  before_action :set_tourist_destination, only: [:show, :edit, :update, :destroy]

  # GET /tourist_destinations
  # GET /tourist_destinations.json
  def index
    @tourist_destinations = TouristDestination.all
  end

  # GET /tourist_destinations/1
  # GET /tourist_destinations/1.json
  def show
  end

  # GET /tourist_destinations/new
  def new
    @tourist_destination = TouristDestination.new
  end

  # GET /tourist_destinations/1/edit
  def edit
  end

  # POST /tourist_destinations
  # POST /tourist_destinations.json
  def create
    @tourist_destination = TouristDestination.new(tourist_destination_params)

    respond_to do |format|
      if @tourist_destination.save
        format.html { redirect_to @tourist_destination, notice: 'Tourist destination was successfully created.' }
        format.json { render :show, status: :created, location: @tourist_destination }
      else
        format.html { render :new }
        format.json { render json: @tourist_destination.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tourist_destinations/1
  # PATCH/PUT /tourist_destinations/1.json
  def update
    respond_to do |format|
      if @tourist_destination.update(tourist_destination_params)
        format.html { redirect_to @tourist_destination, notice: 'Tourist destination was successfully updated.' }
        format.json { render :show, status: :ok, location: @tourist_destination }
      else
        format.html { render :edit }
        format.json { render json: @tourist_destination.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tourist_destinations/1
  # DELETE /tourist_destinations/1.json
  def destroy
    @tourist_destination.destroy
    respond_to do |format|
      format.html { redirect_to tourist_destinations_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tourist_destination
      @tourist_destination = TouristDestination.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tourist_destination_params
      params.require(:tourist_destination).permit(:title, :description)
    end
end
