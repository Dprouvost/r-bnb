class AddKeyToProfile < ActiveRecord::Migration[5.2]
  def change
    add_reference :profiles, :users, index: true, foreign_key: true
  end
end
