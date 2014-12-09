class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # before_action :authenticate_user!
  protect_from_forgery with: :exception
  before_action :set_current_customer

  def set_current_customer
    @current_customer = washer_signed_in? ? current_washer : current_user
  end

  def authenticate_customer!
    washer_signed_in? ? authenticate_washer! : authenticate_user!
  end

end
