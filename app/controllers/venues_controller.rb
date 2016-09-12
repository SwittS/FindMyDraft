class VenuesController < ApplicationController
  before_action :set_venue, only: [:show, :edit, :update]

  before_action :authenticate_user!, except: [:show]

  def index
    @venues = Venue.all
  end

  def new
    @venue = current_user.venues.new
  end

  def show
    @venue = current_user.venues
  end

  def create
    @venue = current_user.venues.new(venue_params)
    if @venue.save
      redirect_to edit_venue_path (@venue), notice: "Venue Saved!"
    else
      render :new
    end
  end

  def update
    if @venue.update(venue_params)
      redirect_to edit_venue_path(@venue), notice: "Venue Updated!"
    else
      render :edit
    end
  end

  def edit
    if current_user.id == @venue.user.id
      @venues = @venue.venue_name
    else
      redirect_to root_path, notice: "You don't have permission."
    end
  end

  private

  def set_venue
    @venue = Venue.find(params[:id])
  end

  def venue_params
    params.require(:venue).permit(
    :venue_name, :address, :wifi, :accomodate, :file
    )
  end
end
