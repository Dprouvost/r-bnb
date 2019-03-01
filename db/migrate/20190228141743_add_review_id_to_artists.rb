class AddReviewIdToArtists < ActiveRecord::Migration[5.2]
  def change
    add_reference :artists, :review
  end
end
