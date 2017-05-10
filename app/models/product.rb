class Product < ApplicationRecord

  def friendly_info
    "#{name}: $#{price}.00"
  end

  def friendly_time
    updated_at.strftime("%A, %b %d %Y")
  end

  def discount_item
    if price < 2
      message = "#{price}.99 - Discount Item!"
    else
      message = "#{price}.99 - Everyday Value!"
    end
    message
  end

  def total_price
    total = price + (price* 0.09)

  end

end
