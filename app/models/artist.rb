class Artist < ApplicationRecord
  has_many :bookings
  has_many :reviews, :through => :bookings
  belongs_to :category, optional: true 
  validates :band_name, :photo_url, :music_url, :price, :location, :description, :area_range, presence: true
end
