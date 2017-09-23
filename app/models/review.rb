class Review < ApplicationRecord
  belongs_to :restaurant

  def restaurant
    Restaurant.find(restaurant_id).name
  end
end
