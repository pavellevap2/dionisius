class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :cuisine
      t.string :first_title
      t.text :description
      t.string :avatar
      t.string :specialization
      t.integer :rating

      t.timestamps
    end
  end
end
