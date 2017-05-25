class OrdersController < ApplicationController

  def create
    carted_products = cart
    subtotal = 0

    carted_products.each do |item|
      subtotal += item.product.price * item.quantity
    end

    order = Order.new(
                      user_id: current_user.id,
                      subtotal: subtotal
                      )
    # order.calculate_subtotal(carted_products)
    order.calculate_tax
    order.calculate_total

    order.save

    carted_products.each do |item|
      item.update(status: "purchased")
      item.update(order_id: order.id)
    end

    redirect_to "/orders/#{order.id}"
  end

  def show
    @items = CartedProduct.where(order_id: params[:id])
    @order = Order.find(params[:id])
  end
end