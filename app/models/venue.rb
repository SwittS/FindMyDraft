class Venue < ApplicationRecord
  belongs_to :user
  has_many :bookings

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  validates :address, :wifi, :accomodate, presence: true
  validates :venue_name, length: {maximum: 64}
end
