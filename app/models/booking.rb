class Booking < ApplicationRecord
  belongs_to :artist, optional: true 
  belongs_to :profile, optional: true 
  has_many :reviews
  has_one :schedule, :through => :artists
end
