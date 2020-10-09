class RemoveMenuIdFromRestaurants < ActiveRecord::Migration[5.2]
  def change
    remove_column :restaurants, :menu_id, :integer
  end
end
