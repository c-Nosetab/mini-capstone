class ProductsController < ApplicationController

  def index
    @cookies = Product.all
  end

  def show
    cookie_id = params[:id]
    @cookie = Product.find_by(id: cookie_id)
  end

  def new
  end

  def create
    cookie = Product.new(
                        name: params[:name],
                        price: params[:price],
                        image: params[:image],
                        description: params[:description]
                        )
    cookie.save

    flash[:success] = "Product Added"
    redirect_to "/cookies/#{cookie.id}"
  end

  def edit
    @cookie = Product.find(params[:id])
  end

  def update
    cookie = Product.find(params[:id])
    cookie.assign_attributes(
                                name: params[:name],
                                price: params[:price],
                                image: params[:image],
                                description: params[:description],
                                stock: params[:stock]
                                )
    cookie.save

    flash[:success] = "Item updated"
    redirect_to "/cookies/#{cookie.id}"
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    flash[:warning] = "Successfully Deleted"
    redirect_to '/'
  end

end
