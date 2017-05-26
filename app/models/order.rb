class Order < ApplicationRecord
  belongs_to :product, optional: true
  belongs_to :user
  has_many :carted_products
  has_many :products, through: :carted_products

  def price
    @item = Product.find(product_id).price
  end

  # def calculate_subtotal(list)
  #   subtotal = 0

  #   list
  #   # list.each do |item|
  #   #   subtotal += item.product.price * item.quantity
  #   # end


  def calculate_totals
    subtotal_sum = 0

    carted_products.each do |item|
      subtotal_sum += item.subtotal_thing
    end

    self.subtotal = subtotal_sum
    self.tax = subtotal * 0.09
    self.total = subtotal + tax
    save
  end

end
