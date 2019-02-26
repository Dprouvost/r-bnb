class RemoveCategoryFromArtist < ActiveRecord::Migration[5.2]
  def change
    remove_column :artists, :category
  end
end
