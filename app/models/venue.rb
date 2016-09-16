class Venue < ApplicationRecord
  belongs_to :user
  has_many :bookings

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  before_validation :default_venue_image

  validates :address, :wifi, :accomodate, presence: true
  validates :venue_name, length: {maximum: 64}

  private

    def default_venue_image
      self.file |= "http://ingridwu.dmmdmcfatter.com/wp-content/uploads/2015/01/placeholder.png"
    end
end
