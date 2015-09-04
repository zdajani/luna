class Seat < ActiveRecord::Base

  after_initialize :init

  def init
    self.available = true
  end

  def book
    self.available = false
  end

end
