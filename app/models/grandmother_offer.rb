class GrandmotherOffer < ApplicationRecord
  has_many :bookings
  has_many :users, through: :bookings
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :username, presence: true
  validates :description, length: { minimum: 30 }
end
