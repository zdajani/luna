class SeatsController < ApplicationController
  def index
    @seats = Seat.all
  end
  
  def edit 
  
  end
end
