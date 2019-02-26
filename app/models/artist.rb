class Artist < ApplicationRecord
  has_many :bookings
  has_many :reviews, :through => :bookings
  validates :band_name, :photo_url, :music_url, :price, :location, :description, :category, presence: true
end
