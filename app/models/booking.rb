class Booking < ApplicationRecord
  belongs_to :artist
  belongs_to :profile
  has_many :reviews
  has_one :schedule, :through => :artists
end
