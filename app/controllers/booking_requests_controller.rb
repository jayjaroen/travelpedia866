class BookingRequestsController < ApplicationController

  def new
  end


  def create
    @itinerary = Itinerary.find(params[:itinerary_id])
    @booking_request = BookingRequest.new(user: current_user, itinerary: @itinerary, booking_status: "pending")
    p "i am here #{@booking_request}"
    # maybe add some lines here on if current user is not the one who create itinerary
    redirect_to user_path(@booking_request.user) if @booking_request.save
    # authorize @booking_request
  end

  def edit
  end

  def update
    accepted_booking_request || decline_booking_request
  end



  def accepted_booking_request
    find_booking_request
    @booking_request.update!(booking_status: "accepted")
    p "i'm hereeeee and this is booking status #{@booking_request.booking_status}"
    redirect_back(fallback_location: root_path)
    # redirect_to user_path(current_user)
  end

  def decline_booking_request
    find_booking_request
    @booking_request.update!(booking_status: "declined")
    p "i'm hereeeee and this is booking status #{@booking_request.booking_status}"
    redirect_back(fallback_location: root_path)
    # redirect_to user_path(current_user)
  end

  private

  def find_booking_request
    @booking_request = BookingRequest.find(params[:id])
  end

  def booking_request_params
    params.require(:BookingRequest).permit(:booking_status, :user_id, :itinerary_id)
  end
end

#controller for accept +routes to accept
#controller for decline + routes to decline
