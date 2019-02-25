class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.text :comment
      t.references :artist, foreign_key: true
      t.references :profile, foreign_key: true
      t.references :booking, foreign_key: true

      t.timestamps
    end
  end
end
