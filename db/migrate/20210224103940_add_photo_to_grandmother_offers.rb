class AddPhotoToGrandmotherOffers < ActiveRecord::Migration[6.0]
  def change
    add_column :grandmother_offers, :photo, :string
  end
end
