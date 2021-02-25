class RemoveActivityPriceFromGrandmotherOffer < ActiveRecord::Migration[6.0]
  def change
    remove_column :grandmother_offers, :activity_price, :integer
  end
end
