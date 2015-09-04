require 'rails_helper'

describe Seat do

  it { should belong_to (:passenger) }

  it 'is initialized as available' do
    expect(subject.available?).to eq true
  end

  it 'can be booked' do
    subject.book(passenger.id)
    expect(subject.available?).to eq false
  end

  let(:passenger) { Passenger.create(full_name: "N. Armstrong") }

  it 'should be booked with a passenger' do 
    subject.book(passenger.id)
    expect(subject.passenger).to eq passenger
  end

end
