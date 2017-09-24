# == Schema Information
#
# Table name: restaurants
#
#  id              :integer          not null, primary key
#  name            :string
#  cuisine         :string
#  first_title     :string
#  description     :text
#  avatar          :string
#  specialization  :string
#  rating          :float
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  seo_description :text
#  seo_title       :string
#

class Restaurant < ApplicationRecord
  include Filterable

  has_many :addresses
  has_many :reviews, autosave: false
  accepts_nested_attributes_for :addresses

  def address_title

  end

  def set_restaurant_rating
    n = reviews.size
    self.rating =  reviews.each_with_object([]) do |rev, arr|
      arr << rev.rating
    end.inject(:+).to_f / n

  end




end
