class Product < ApplicationRecord
  belongs_to :supplier
  has_many :images
  has_many :order


  def friendly_info
    "#{name}: $#{price}"
  end

  def friendly_time
    updated_at.strftime("%A, %b %d %Y")
  end

  def discount_item
    if discounted?
      "#{price} - Discount Item!"
    else
      "#{price} - Everyday Value!"
    end
  end

  def discounted?
    price < 4
  end

  def total_price
    total = price + (price* 0.09)

  end

  def first_image_url
    image_collection = images
    if image_collection.length == 0
      "https://i.ytimg.com/vi/NDJBQ0k9TzQ/maxresdefault.jpg"
    else
      image_collection.first.url
    end
  end

  def find_subtotal(price, quantity)
    @total_price = price.to_i * quantity.to_i
  end

  def find_tax
    @tax = @total_price * 0.1
  end

  def find_total
    @total_price + @tax
  end

end
