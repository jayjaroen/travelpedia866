class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @booking_requests = @user.booking_requests
    @itineraries = @user.itineraries

  end
end
# if the booking request of itinerary = current user, then display all the booking request
# if you are making request, see the booking status
