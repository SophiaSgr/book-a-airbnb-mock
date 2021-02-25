class AddCoordinatesToGrandmotherOffer < ActiveRecord::Migration[6.0]
  def change
    add_column :grandmother_offers, :latitude, :float
    add_column :grandmother_offers, :longitude, :float
  end
end
