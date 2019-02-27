class Booking < ApplicationRecord
  belongs_to :artist
  belongs_to :profile
  has_one :schedule, :through => :artists
end
