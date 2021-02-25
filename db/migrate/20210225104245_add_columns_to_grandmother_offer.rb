class AddColumnsToGrandmotherOffer < ActiveRecord::Migration[6.0]
  def change
    add_column :grandmother_offers, :city, :string
    add_column :grandmother_offers, :specialty, :string
    add_column :grandmother_offers, :character, :string
    add_column :grandmother_offers, :return_offer_wish, :string
    add_column :grandmother_offers, :address, :string
  end
end
