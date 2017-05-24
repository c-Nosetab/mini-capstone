class CartedProductsController < ApplicationController
  def create
    cart = CartedProduct.new(
                              user_id: current_user.id,
                              product_id: params[:product_id],
                              quantity: params[:quantity],
                              status: "carted"
                            )
    cart.save

    redirect_to "/checkout"
  end

  def index
    @cart = CartedProduct.where(status: "carted")
  end
end
