class Product < ApplicationRecord
  belongs_to :supplier

  has_many :images
  has_many :category_products
  has_many :categories, through: :category_products
  has_many :carted_products
  has_many :orders, through: :carted_products

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :description, presence: true, length: {maximum: 500}
  validates :price, presence: true
  validates :price, numericality: true
  # validates :price, format: {with: /\d+[.]+\d{2}/}


  def find_categories
    cat_array = []

    categories.map {|cat| cat.name}.join(", ").titleize



    # cat_array.join(" - ")
  end

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

end
