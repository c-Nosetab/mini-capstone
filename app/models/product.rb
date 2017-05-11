class Product < ApplicationRecord

  def friendly_info
    "#{name}: $#{price}.00"
  end

  def friendly_time
    updated_at.strftime("%A, %b %d %Y")
  end

  def discount_item
    if discounted?
      "#{price}.00 - Discount Item!"
    else
      "#{price}.00 - Everyday Value!"
    end
  end

  def discounted?
    price < 4
  end

  def total_price
    total = price + (price* 0.09)

  end

end
