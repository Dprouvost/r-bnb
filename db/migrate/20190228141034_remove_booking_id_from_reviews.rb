class RemoveBookingIdFromReviews < ActiveRecord::Migration[5.2]
  def change
    remove_reference :reviews, :booking
  end
end
