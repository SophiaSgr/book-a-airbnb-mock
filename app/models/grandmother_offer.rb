class GrandmotherOffer < ApplicationRecord
  has_many_attached :photos
  has_many :bookings
  belongs_to :user
  has_many :users, through: :bookings
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :username, presence: true
  validates :description, length: { minimum: 30 }
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
