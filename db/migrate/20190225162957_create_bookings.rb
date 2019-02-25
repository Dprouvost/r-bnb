class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :artist, foreign_key: true
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
