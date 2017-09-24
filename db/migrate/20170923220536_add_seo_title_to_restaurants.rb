class AddSeoTitleToRestaurants < ActiveRecord::Migration[5.1]
  def change
    add_column :restaurants, :seo_title, :string
  end
end
