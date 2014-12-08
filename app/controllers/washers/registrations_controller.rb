class Washers::RegistrationsController < Devise::RegistrationsController
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :password) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:email, :first_name, :last_name, :phone, :address, :password, :current_password) }
  end

  # def after_sign_up_path_for(washer)
  #   washer_path(washer)
  # end

  # def after_sign_in_path_for(washer)
  #   washer_path(washer)
  # end
end