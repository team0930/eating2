class AddAreIdToRestaurants < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :area_id, :integer
  end
end
