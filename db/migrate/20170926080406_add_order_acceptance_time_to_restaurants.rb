class AddOrderAcceptanceTimeToRestaurants < ActiveRecord::Migration[5.1]
  def change
    add_column :restaurants, :order_acceptance_time, :string
  end
end
