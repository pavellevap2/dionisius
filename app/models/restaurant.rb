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
  has_many :reviews
  accepts_nested_attributes_for :addresses
  has_many :images, as: :imageable
#  has_one :avatar, class_name: 'Image', optional: true
 # mount_uploader :avatar, AvatarUploader
  def address_title

  end

  def set_restaurant_rating
    n = reviews.compact.size
    self.rating =  reviews.each_with_object([]) do |rev, arr|
      arr << rev.rating
    end.compact.inject(:+).to_f / n
  end

  def has_reviews
    self.reviews.size > 0
  end

  def ratings
    reviews.each_with_object([]) do |rev, arr|
      arr << rev.rating
    end.compact
  end

  def image
    if images.first
      images.first
    else
      '/images/DefaultImage.jpg'
    end
  end




end
