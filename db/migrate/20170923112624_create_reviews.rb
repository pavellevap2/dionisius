class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :body
      t.integer :restaurant_id

      t.timestamps
    end
    add_index :reviews, :restaurant_id
  end
end
