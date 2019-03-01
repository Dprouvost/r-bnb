class Review < ApplicationRecord
  RATING = [1, 2, 3, 4, 5]
  has_many :artists
  belongs_to :profile, optional: true
  validates :rating, inclusion: { in: [1, 2, 3, 4, 5] }
  validates :comment, presence: true
end
