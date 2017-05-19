class OrdersController < ApplicationController

  def create
    item = Product.find(params[:product_id])

    order = Order.new(
                      user_id: current_user.id,
                      quantity: params[:quantity],
                      product_id: params[:product_id],

                      subtotal: item.find_subtotal(item.price , params[:quantity]),
                      tax: item.find_tax,
                      total: item.find_total
                      )
    order.save

    redirect_to "/orders/#{order.id}"
  end

  def show
    @order = Order.find(params[:id])
  end
end