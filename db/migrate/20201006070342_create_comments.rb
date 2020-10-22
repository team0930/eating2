class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :user_id, null: false
      t.integer :restaurant_id, null: false
      t.string :image_id
      t.string :title, null: false
      t.text :content, null: false
      t.float :star,default: 0.0, null: false

      t.timestamps
    end
  end
end
