class Product < ApplicationRecord
  belongs_to :supplier

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

end
