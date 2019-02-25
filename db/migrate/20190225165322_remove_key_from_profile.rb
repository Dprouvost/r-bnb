class RemoveKeyFromProfile < ActiveRecord::Migration[5.2]
  def change
    remove_column :profiles, :user_id
  end
end
