class LocationsController < ApplicationController
  def index
    @locations = Location.all
    @itineraries = Itinerary.all
  end

  def show
  end

end
