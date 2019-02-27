class Rem < ActiveRecord::Migration[5.2]
  def change
    remove_column :profiles, :users_id
  end
end
