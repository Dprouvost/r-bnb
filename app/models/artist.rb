class Artist < ApplicationRecord
  has_many :bookings, dependent: :destroy
  belongs_to :review, optional: true
  belongs_to :category, optional: true
  validates :band_name, :photo_url, :music_url, :price, :location, :description, :area_range, presence: true
  
  include PgSearch
  pg_search_scope :search_by_category,
    against: [ :category ],
    using: {
      tsearch: { prefix: true } #Search GEM 
    }
end
