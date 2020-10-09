class AddTypeToMenus < ActiveRecord::Migration[5.2]
  def change
    add_column :menus, :category, :integer, null: false, default: 0
  end
end
