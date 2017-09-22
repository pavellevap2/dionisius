class Address < ApplicationRecord
  belongs_to :restaurant
  geocoded_by :title
  after_validation :geocode
end
