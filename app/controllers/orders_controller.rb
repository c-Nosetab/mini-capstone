class OrdersController < ApplicationController

  def create
    items = CartedProduct.where(status: "carted")

    order = Order.new(
                      user_id: current_user.id
                      subtotal: items.calculate_subtotal
                      )

    order.calculate_subtotal
    order.calculate_tax
    order.calculate_total

    order.save

    redirect_to "/orders/#{order.id}"
  end

  def show
    @order = Order.find(params[:id])
    @product = Product.find(@order.product_id)
  end
end