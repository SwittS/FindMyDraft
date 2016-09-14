class Venue < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :address, :wifi, :accomodate, presence: true
  validates :venue_name, length: {maximum: 64}
end
