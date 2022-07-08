class UsersController < ApplicationController
  def show
    # @user = User.find(params[:id])
    @user = current_user
    @booking_requests = @user.booking_requests
    @itineraries = @user.itineraries
<<<<<<< HEAD
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render 'edit'
    end
  end


  private
  def user_params
    params.require(:user).permit(:email, :user_id, :photo, :about_me )
=======
>>>>>>> master
  end
end
# if the booking request of itinerary = current user, then display all the booking request
# if you are making request, see the booking status
