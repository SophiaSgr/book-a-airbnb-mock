class AddUserToGrandmotherOffers < ActiveRecord::Migration[6.0]
  def change
    add_reference :grandmother_offers, :user, null: false, foreign_key: true
  end
end
