class LocationsController < ApplicationController
  def index
    @locations = Location.all
    @itinerary = Itinerary.new
    @itineraries = Itinerary.all
  end

  def show
    @location = Location.new
    @itinerary = Itinerary.new
  end
end
