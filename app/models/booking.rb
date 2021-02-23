class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :grandmother_offer

  STATUSES = ['accepted', 'rejected', 'pending']
  validates :booking_date, presence: true
  validates :status, presence: true, inclusion: { in: STATUSES }
  # validates :booking_date_cannot_be_in_the_past

  private

  def booking_date_cannot_be_in_the_past
    errors.add(:booking_date, "can't be in the past") unless booking_date.present? && booking_date < Date.today
  end
end
