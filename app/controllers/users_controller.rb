class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @booking_requests = @user.booking_requests
  end
end
