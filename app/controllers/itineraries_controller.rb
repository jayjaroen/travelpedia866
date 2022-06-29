class ItinerariesController < ApplicationController

  def index
    @location = Location.find(params[:location_id])
    @itineraries = Itinerary.all
    @itinerary = Itinerary.new
    # create the Itinerary on the index page
  end

  def show
    @itinerary = Itinerary.new
  end

  def new
    @itinerary = Itinerary.new
  end

  def create
    @itinerary = Itinerary.new(itinerary_params)
    # @itinerary.location = @location (how can itinerary go back to the location)
    # what is the difference between .save & .save!
     redirect_to itinerary_path(@itinerary) if @itinerary.save

  end
  # there is no user id yet/ not created
    #  what is the link between itinerary and location (after the location has been created?)


  private

  def find_itinerary
    @itinerary = Itinerary.find(params[:id])
  end

  def itinerary_params
    params.require(:itinerary).permit(:name, :description, :image, :comment, :user_id, :location_id)
  end
end
