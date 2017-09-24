# == Schema Information
#
# Table name: restaurants
#
#  id             :integer          not null, primary key
#  name           :string
#  cuisine        :string
#  first_title    :string
#  description    :text
#  avatar         :string
#  specialization :string
#  rating         :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Restaurant < ApplicationRecord
  include Filterable

  has_many :addresses
  has_many :reviews, autosave: false
  accepts_nested_attributes_for :addresses

  def address_title

  end
end
