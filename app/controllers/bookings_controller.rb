class BookingsController < ApplicationController
  before_action :authenticate_user!

  def calendar
    venue = Venue.find(params[:venue_id])
    today = Date.today
    bookings = venue.bookings.where("draft_date >= ?", today, today)
    render json: bookings
  end

  def create
    @booking = current_user.booking.create(booking_params)
    redirect_to @booking.venue, notice: "Your reservation has been submitted!"
  end

  private

  def booking_params
    params.require(:booking).permit(:draft_date)
  end
  
end
