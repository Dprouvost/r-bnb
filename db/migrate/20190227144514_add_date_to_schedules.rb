class AddDateToSchedules < ActiveRecord::Migration[5.2]
  def change
    add_column :schedules, :date, :datetime
  end
end
