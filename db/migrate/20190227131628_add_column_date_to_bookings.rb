class AddColumnDateToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :date, :date
  end
end
