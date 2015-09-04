class Seat < ActiveRecord::Base

  belongs_to :passenger

  after_initialize :init

  def init
    self.available = true
  end

  def book(passenger_id)
    self.update(available: false, passenger_id: passenger_id)
  end

end
