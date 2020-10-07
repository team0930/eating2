class AddNameToAreas < ActiveRecord::Migration[5.2]
  def change
    add_column :areas, :name, :string
  end
end
