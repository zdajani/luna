class PassengersController < ApplicationController
  def new
    @seat = Seat.find(params[:seat_id])
    @passenger = Passenger.new
  end
  
  def create 
    @seat = Seat.find(params[:seat_id])
    @passenger = Passenger.create passenger_params
    redirect_to edit_seat_path(@seat)
  end
  
  def passenger_params
    params.require(:passenger).permit(:full_name)
  end
end
