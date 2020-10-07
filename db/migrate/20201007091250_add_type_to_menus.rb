class AddTypeToMenus < ActiveRecord::Migration[5.2]
  def change
    add_column :menus, :category, :string
  end
end
