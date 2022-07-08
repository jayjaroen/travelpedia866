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
    if @itinerary.save
      redirect_to user_path(current_user)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    find_itinerary
    @itinerary.user.id == current_user.id
  end

  def update
    find_itinerary
    @itinerary.update(itinerary_params)
    redirect_to user_path(current_user)
  end

  private

  def find_itinerary
    @itinerary = Itinerary.find(params[:id])
  end

  def itinerary_params
    params.require(:itinerary).permit(:name, :description, :image, :comment, :user_id, :location_id)
  end
end
