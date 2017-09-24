class CreateMenus < ActiveRecord::Migration[5.1]
  def change
    create_table :menus do |t|
      t.integer :restaurant_id
      t.string :avatar

      t.timestamps
    end
    add_index :menus, :restaurant_id
  end
end
