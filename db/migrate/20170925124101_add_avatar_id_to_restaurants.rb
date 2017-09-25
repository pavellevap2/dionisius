class AddAvatarIdToRestaurants < ActiveRecord::Migration[5.1]
  def change
    add_column :restaurants, :avatar_id, :integer
  end
end
