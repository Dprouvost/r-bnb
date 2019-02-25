class Review < ApplicationRecord
  belongs_to :artist
  belongs_to :profile
  belongs_to :booking
end
