class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :washer
  has_one :review

  validates_presence_of :formula, :temperature, :price, :pickup_start_date, :pickup_end_date, :delivery_start_date, :delivery_end_date

  def set_price
    self.price = ENV["formula#{self.formula}_price"] if [1, 2].include?(self.formula.to_i)
  end

  def set_interval(pickup_interval, delivery_interval)
    pickup_start_hour_minutes, pickup_end_hour_minutes = pickup_interval.split('-').map(&:to_i)
    pickup_start_hour = pickup_start_hour_minutes / 100
    pickup_start_minutes = pickup_start_hour_minutes % 100
    pickup_end_hour = pickup_end_hour_minutes / 100
    pickup_end_minutes = pickup_end_hour_minutes % 100
    delivery_start_hour_minutes, delivery_end_hour_minutes = delivery_interval.split('-').map(&:to_i)
    delivery_start_hour = delivery_start_hour_minutes / 100
    delivery_start_minutes = delivery_start_hour_minutes % 100
    delivery_end_hour = delivery_end_hour_minutes / 100
    delivery_end_minutes = delivery_end_hour_minutes % 100

    self.pickup_start_date = self.pickup_start_date.change(hour: pickup_start_hour, min: pickup_start_minutes)
    self.pickup_end_date = self.pickup_start_date.change(hour: pickup_end_hour, min: pickup_end_minutes)
    self.delivery_start_date = self.delivery_start_date.change(hour: delivery_start_hour, min: delivery_start_minutes)
    self.delivery_end_date = self.delivery_start_date.change(hour: delivery_end_hour, min: delivery_end_minutes)
  end

end
