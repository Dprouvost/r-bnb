class AddArtistIdToReviews < ActiveRecord::Migration[5.2]
  def change
    add_reference :reviews, :artist
  end
end
