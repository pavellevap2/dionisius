class AddDescriptionToRestaurants < ActiveRecord::Migration[5.1]
  def change
    add_column :restaurants, :seo_description, :text
  end
end
