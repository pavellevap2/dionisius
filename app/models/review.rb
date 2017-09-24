# == Schema Information
#
# Table name: reviews
#
#  id            :integer          not null, primary key
#  title         :string
#  body          :text
#  restaurant_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  rating        :integer
#

class Review < ApplicationRecord
  belongs_to :restaurant
  STARS = [1,2,3,4,5]
  #def restaurant
   # Restaurant.find(restaurant_id).id
  #end
end
