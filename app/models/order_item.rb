# == Schema Information
#
# Table name: order_items
#
#  id          :integer          not null, primary key
#  product_id  :integer
#  order_id    :integer
#  unit_price  :decimal(12, 3)
#  quantity    :integer
#  total_price :decimal(12, 3)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class OrderItem < ApplicationRecord
  belongs_to :product
  belongs_to :order

  validates :quantity, presence: true, numericality: {only_integer: true, greater_than: 0}
  validate :product_present
  validate :order_present

  before_save :finalize

  def unit_price
    if persisted?
      unit_price
    else
      product.price
    end
  end

  def total_price
    unit_price * quantity
  end

  private

  def product_present
    if product.nil?
      errors.add(:product, 'Не валидный, либо отсутствует')
    end
  end

  def order_present
    if order.nil?
      errors.add(:order, 'Не валидный или отсутствует')
    end
  end

  def finalize
    self[:unit_price] = unit_price
    self[:total_price] = quantity * self[:unit_price]
  end
end
