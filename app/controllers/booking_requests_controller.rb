class BookingRequestsController < ApplicationController

  def new
  end


  def create
    @itinerary = Itinerary.find(params[:itinerary_id])
    @booking_request = BookingRequest.new(user: current_user, itinerary: @itinerary, booking_status: "pending")
    p "i am here #{@booking_request}"
    redirect_to user_path(@booking_request.user) if @booking_request.save
    # authorize @booking_request
  end

  def edit
  end

  def update

  end

  private

  def find_booking_request
    @booking_request = BookingRequest.find(params[:id])
  end

  def booking_request_params
    params.require(:BookingRequest).permit(:booking_status, :user_id, :itinerary_id)
  end
end
