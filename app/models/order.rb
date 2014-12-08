class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :washer
  has_one :review

  validates_presence_of :formula, :temperature, :price, :pickup_start_date, :pickup_end_date, :delivery_start_date, :delivery_end_date
end
