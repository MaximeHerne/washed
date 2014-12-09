class OrdersController < ApplicationController

  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    @order.user = current_user
    if @order.save
      redirect_to order_path(@order)
    else
      render :new
    end
  end

  def show

  end


private

  def order_params
    params.require(:order).permit(:formula, :temperature, :price, :pickup_start_date, :pickup_end_date, :delivery_start_date, :delivery_end_date)
  end


end
