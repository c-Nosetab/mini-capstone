class CartedProduct < ApplicationRecord
  belongs_to :user
  belongs_to :order, optional: true
  belongs_to :product

  validates :quantity, presence: true
  validates :quantity, numericality: { greater_than: 0}

  def subtotal_thing
    product.price * quantity
  end

end
