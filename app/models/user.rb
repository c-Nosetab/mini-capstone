class User < ApplicationRecord
  has_secure_password
  has_many :orders

  has_many :carted_products
  has_many :users, through: :carted_products
  has_many :orders, through: :carted_products
end
