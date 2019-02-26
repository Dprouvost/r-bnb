class RemoveProfileIdFromReviews < ActiveRecord::Migration[5.2]
  def change
    remove_column :reviews, :profile_id
  end
end
