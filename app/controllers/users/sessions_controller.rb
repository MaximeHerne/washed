class Users::SessionsController < Devise::SessionsController
  # before_filter :configure_permitted_parameters, if: :devise_controller?

  # protected

  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :password, :password_confirmation) }
  #   devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:email, :password) }
  # end

  # def after_sign_up_path_for(user)
  #   user_path(user)
  # end

  # def after_sign_in_path_for(user)
  #   user_path(user)
  # end
end