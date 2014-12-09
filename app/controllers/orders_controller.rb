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
    @order.set_interval(params[:pickup_start_interval], params[:delivery_start_interval])
    @order.set_price
    if @order.save
      redirect_to order_path(@order)
    else
      puts @order.errors.to_yaml
      render :new, alert: @order.errors.full_messages
    end
  end

  def show

  end


private

  def order_params
    params.require(:order).permit(:formula, :temperature, :pickup_start_date, :delivery_start_date)
  end


end
