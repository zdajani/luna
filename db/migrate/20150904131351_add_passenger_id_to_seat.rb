class AddPassengerIdToSeat < ActiveRecord::Migration
  def change
    add_reference :seats, :passenger, index: true, foreign_key: true
  end
end
