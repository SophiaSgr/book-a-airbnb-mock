class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.string :status, default: 'pending'
      t.date :booking_date
      t.references :user, null: false, foreign_key: true
      t.references :grandmother_offer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
