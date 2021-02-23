class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id]
  end

  def new
    Booking.new
  end

  def create
    @grandmother_offer = GrandmotherOffer.find(params[:grandmother_offer_id])
    @booking = Booking.new(booking_params)
    @booking.grandmother_offers = @grandmother_offer
    if @booking.save
      redirect_to  grandmother_offer_booking_path(@grandmother_offer)# ROUTE
    else
      render :new # NOT A ROUTE, IT'S A FILEPATH FROM /views
    end
  end

  private

  def booking_params
    params.require(:bookings).permit(:booking_date, :status)
  end
end
