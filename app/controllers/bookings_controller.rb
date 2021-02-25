class BookingsController < ApplicationController

  def index
    @my_bookings = Booking.all.select { |booking| booking.user_id == current_user.id }
    @requests = Booking.all.select { |booking| booking.grandmother_offer.user == current_user}
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
      redirect_to bookings_path(@grandmother_offer)
    else
      render :new
    end
  end

  def accept
    @booking = Booking.find(params[:id])
    @booking.update(accepted: true)
    redirect_to bookings_path
  end

  def reject
    @booking = Booking.find(params[:id])
    @booking.update(accepted: false)
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:booking_date)
  end
end
