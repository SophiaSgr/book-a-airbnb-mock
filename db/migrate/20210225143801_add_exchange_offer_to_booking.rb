class AddExchangeOfferToBooking < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :exchange_offer, :string
  end
end
