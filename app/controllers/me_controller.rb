class MeController < ApplicationController

  before_action :authenticate_customer!

  def profile
  end

  def edit
  end

  def update
    @current_customer.update(customer_params)
    redirect_to root_path
  end

  private

  def customer_params
    if user_signed_in?
      params.require(:user).permit(:first_name, :last_name, :phone, :address)
    else
      params.require(:washer).permit(:first_name, :last_name, :phone, :address)
    end
  end

end