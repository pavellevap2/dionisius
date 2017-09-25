# == Schema Information
#
# Table name: images
#
#  id             :integer          not null, primary key
#  imageable_id   :integer
#  imageable_type :string
#  url            :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Image < ApplicationRecord
  belongs_to :imageable, polymorphic: true
 # belongs_to :restaurant, as: 'Avatar', optional: true
end
