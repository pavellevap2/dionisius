class Review < ApplicationRecord
  belongs_to :restaurant
  STARS = [1,2,3,4,5]
  #def restaurant
   # Restaurant.find(restaurant_id).id
  #end
end
