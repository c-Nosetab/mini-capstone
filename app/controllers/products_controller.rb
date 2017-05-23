class ProductsController < ApplicationController

  def index
    @cookies = Product.all

    sort_attribute = params[:sort]
    sort_order = params[:sort_order]
    discount = params[:discount]
    random = params[:random]
    search = params[:search]
    category = params[:category]

    if search
      @cookies = @cookies.where("name iLIKE ? OR description iLIKE ?", "%#{search}%", "%#{search}%")
    end

    if category
      @cookies = Category.find_by(name: category).products
    end

    if discount
      @cookies = @cookies.where("price < ?", discount)
    end
    if random
      @cookies = @cookies.order("RANDOM()").limit(random)
    end

    if sort_attribute && sort_order
      @cookies = @cookies.order(sort_attribute => sort_order)
    elsif sort_attribute
      @cookies = @cookies.order(sort_attribute)
    end

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
                        description: params[:description],
                        supplier_id: params[:supplier][:supplier_id]
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
                                description: params[:description],
                                stock: params[:stock],
                                supplier_id: params[:supplier_id]
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


  def random
    product = Product.all.sample

    redirect_to "/cookies/#{product.id}"
  end

end
