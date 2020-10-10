class RemoveAreIdFromRestaurants < ActiveRecord::Migration[5.2]
  def change
    remove_column :restaurants, :area_id, :integer
  end
end
