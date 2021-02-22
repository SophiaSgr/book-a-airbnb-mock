class CreateGrandmotherOffers < ActiveRecord::Migration[6.0]
  def change
    create_table :grandmother_offers do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.integer :activity_price
      t.string :activity_type
      t.string :description

      t.timestamps
    end
  end
end
