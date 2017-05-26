class Image < ApplicationRecord
  belongs_to :product

  validates :images, presence: true
end
