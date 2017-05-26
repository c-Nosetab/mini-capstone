class CartedProductsController < ApplicationController
  before_action :authenticate_user!

  def index

    item_id = params[:item_id]
    change_quantity = params[:change_quantity]

    # if change_quantity && item_id
    #   item = CartedProduct.find(item_id)
    #   item.update(quantity: change_quantity)

    #   redirect_to "/carted_products"
    # end

    if current_user && current_user.cart.any?
      @cart = current_user.cart
    else
      flash[:warning] = "No items in cart."
      redirect_to '/'
    end
  end




  def create
    cart = CartedProduct.new(
                              user_id: current_user.id,
                              product_id: params[:product_id],
                              quantity: params[:quantity],
                              status: "carted"
                            )
    cart.save

    redirect_to "/carted_products"
  end


  def destroy
    item = CartedProduct.find(params[:id])
    item.update(status: "removed")

    flash[:succes] = "Item removed from cart!"

    redirect_to '/carted_products'
  end

end
