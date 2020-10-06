class CreateMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :menus do |t|
      t.integer :restaurant_id, null: false
      t.string :name, null: false
      t.string :price, null: false

      t.timestamps
    end
  end
end
