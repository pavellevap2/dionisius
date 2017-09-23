# == Schema Information
#
# Table name: addresses
#
#  id            :integer          not null, primary key
#  title         :string
#  longitude     :float
#  latitude      :float
#  restaurant_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Address < ApplicationRecord
  belongs_to :restaurant
  geocoded_by :title
  after_validation :geocode
end
