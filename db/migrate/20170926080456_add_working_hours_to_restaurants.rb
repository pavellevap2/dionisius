class AddWorkingHoursToRestaurants < ActiveRecord::Migration[5.1]
  def change
    add_column :restaurants, :working_hours, :string
  end
end
