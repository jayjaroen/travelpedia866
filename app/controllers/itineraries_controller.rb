class ItinerariesController < ApplicationController
# before_action:
  def index
    @location = Location.find(params[:location_id])
    @itineraries = @location.itineraries
    # create the Itinerary on the index page
  end

  def show
    @itinerary = Itinerary.find(params[:id])
  end

  def new

    @itinerary = Itinerary.new
  end

  def create
    # @location = Location.find(params[:location_id])
    @itinerary = Itinerary.new(itinerary_params)
    @itinerary.user = current_user
    p "i'm here again#{@itinerary}"
    # @itinerary.location = @location
    # p "#{@itinerary.location}"
    # @itinerary.location = @location (how can itinerary go back to the location)
    # what is the difference between .save & .save!
    if @itinerary.save
      redirect_to itinerary_path(@itinerary)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    # upd
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
