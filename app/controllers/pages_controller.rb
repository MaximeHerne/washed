class PagesController < ApplicationController
  skip_before_action :authenticate_customer!

  def home

  end

  def about

  end
end
