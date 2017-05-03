class ProductsController < ApplicationController

  def products
    @items = Product.all
    render 'productlist.html.erb'
  end
end
