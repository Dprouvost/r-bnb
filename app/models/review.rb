class Review < ApplicationRecord
  belongs_to :artist, :through => :booking
  belongs_to :profile, :through => :booking
  validates :rating, inclusion: { in: [1, 2, 3, 4, 5] }
  validates :comment, presence: true
end

