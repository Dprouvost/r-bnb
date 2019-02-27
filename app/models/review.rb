class Review < ApplicationRecord
  RATING = ["1", "2", "3", "4", "5"]
  belongs_to :artist, optional: true 
  belongs_to :profile, optional: true 
  validates :rating, inclusion: { in: [1, 2, 3, 4, 5] }
  validates :comment, presence: true
end
