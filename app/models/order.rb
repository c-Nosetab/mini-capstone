class Order < ApplicationRecord
  belongs_to :product, optional: true
  belongs_to :user

  def price
    @item = Product.find(product_id).price
  end




end
