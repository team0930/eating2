class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name, null: false
      t.string :phone_number, null: false
      t.string :postal_code, null: false
      t.string :address, null: false
      t.string :email, null: false
      t.integer :menu_id, null: false
      t.integer :genre_id, null: false
      t.text :introduction, null: false

      t.timestamps
    end
  end
end
