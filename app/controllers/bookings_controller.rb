class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
    @grandmother_offer = GrandmotherOffer.find(params[:grandmother_offer_id])
  end

  def create
    @grandmother_offer = GrandmotherOffer.find(params[:grandmother_offer_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.grandmother_offer = @grandmother_offer
    if @booking.save
      redirect_to grandmother_offer_path(@grandmother_offer)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:booking_date, :status)
  end
end
