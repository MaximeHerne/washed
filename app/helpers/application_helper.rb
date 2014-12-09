module ApplicationHelper

  def customer_signed_in?
    user_signed_in? || washer_signed_in?
  end

end
