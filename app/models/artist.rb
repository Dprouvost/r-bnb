class Artist < ApplicationRecord
  has_many :bookings
  belongs_to :review
  belongs_to :category, optional: true
  validates :band_name, :photo_url, :music_url, :price, :location, :description, :area_range, presence: true
end
