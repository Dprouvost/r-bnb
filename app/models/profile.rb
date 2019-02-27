class Profile < ApplicationRecord
  USER_TYPE = ["Buyer", "Seller"]

  has_many :bookings
  validates :first_name, :last_name, presence: true
  belongs_to :user
end
