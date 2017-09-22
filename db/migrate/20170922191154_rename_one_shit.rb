class RenameOneShit < ActiveRecord::Migration[5.1]
  def change
    rename_column :addresses, :restoraunt_id, :restaurant_id
  end
end
