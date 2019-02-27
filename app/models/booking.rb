class Booking < ApplicationRecord
  belongs_to :artist
  belongs_to :profile
  has_many :reviews
end
