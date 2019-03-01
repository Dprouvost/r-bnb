class RemoveReviewIdFromArtists < ActiveRecord::Migration[5.2]
  def change
    remove_reference :artists, :review
  end
end
