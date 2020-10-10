class RemoveRestaurantIdFromMenus < ActiveRecord::Migration[5.2]
  def change
    remove_column :menus, :restaurant_id, :integer
  end
end
