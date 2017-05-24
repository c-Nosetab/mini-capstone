class Order < ApplicationRecord
  belongs_to :product, optional: true
  belongs_to :user
  has_many :carted_products
  has_many :users, through: :carted_products
  has_many :products, through: :carted_products

  def price
    @item = Product.find(product_id).price
  end

  def calculate_subtotal(cart)
    subtotal = 0

    cart.each do |item|
      subtotal = item.product.price * item.quantity
    end


    self.subtotal = product.price * quantity


  end

  def calculate_tax
    self.tax = subtotal * 0.09
  end

  def calculate_total
    self.total = subtotal + tax
  end

end
