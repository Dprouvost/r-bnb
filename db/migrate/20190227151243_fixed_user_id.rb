class FixedUserId < ActiveRecord::Migration[5.2]
  def change
    add_reference :profiles, :user, index: true, foreign_key: true
  end
end
