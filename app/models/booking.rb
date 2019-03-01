class Booking < ApplicationRecord
  belongs_to :artist, optional: true
  belongs_to :profile, optional: true
end
