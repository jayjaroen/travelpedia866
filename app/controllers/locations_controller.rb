class LocationsController < ApplicationController
  def index
    @locations = Location.all
    @itinerary = Itinerary.new
  end

  def show
    @itinerary = Itinerary.new
  end
end
