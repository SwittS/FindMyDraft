class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])

    @venue = Venue.find_by_user_id(@user.id)


    @booking = Booking.find_by_venue_id(@venue.id)
  end
end
