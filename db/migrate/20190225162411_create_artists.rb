class CreateArtists < ActiveRecord::Migration[5.2]
  def change
    create_table :artists do |t|
      t.string :band_name
      t.string :photo_url
      t.string :music_url
      t.integer :price
      t.string :location
      t.integer :area_range
      t.text :description
      t.string :category
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
