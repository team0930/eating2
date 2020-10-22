class AddRestaurantIdToMenus < ActiveRecord::Migration[5.2]
  def change
    add_column :menus, :restaurant_id, :integer
  end
end
