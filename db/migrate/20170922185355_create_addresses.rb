class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :title
      t.float :longitude
      t.float :latitude
      t.integer :restoraunt_id

      t.timestamps
    end
  end
end
