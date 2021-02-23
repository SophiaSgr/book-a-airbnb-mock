class GrandmotherOffersController < ApplicationController
  def index
    @grandmother_offers = GrandmotherOffer.all
  end

  def show
    @grandmother_offers = GrandmotherOffer.find(params[:id])
  end

  def new
    @grandmother_offer = GrandmotherOffer.new
  end

  def create
    @grandmother_offer = GrandmotherOffer.new(grandmother_offer_params)
    @grandmother_offer.user_id = current_user.id
    if @grandmother_offer.save
      redirect_to grandmother_offer_path(@grandmother_offer)
    else
      render :new
    end
  end

  def edit
    @grandmother_offer = GrandmotherOffer.find(params[:id])
  end

  def update
    @grandmother_offer = GrandmotherOffer.find(params[:id])
    if @grandmother_offer.update(params[grandmother_offer_params])
      redirect_to grandmother_offer_path(@grandmother_offer), notice: 'Offer was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @grandmother_offer = GrandmotherOffer.find(params[:id])
    @grandmother_offer.destroy
    redirect_to grandmother_offers_path, notice: 'Offer was successfully destroyed.'
  end

  private

  def grandmother_offer_params
    params.require(:grandmother_offer).permit(:first_name, :last_name, :username, :activity_price, :activity_type, :description)
  end
end
