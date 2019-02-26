class RemoveArtistIdToReviews < ActiveRecord::Migration[5.2]
  def change
    remove_column :reviews, :artist_id
  end
end
