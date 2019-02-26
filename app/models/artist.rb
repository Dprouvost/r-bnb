class Artist < ApplicationRecord
  has_many :bookings
  has_many :reviews, :through => :bookings
  belongs_to :category
  validates :band_name, :photo_url, :music_url, :price, :location, :description, :category, :area_range, presence: true
end
