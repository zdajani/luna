require 'rails_helper'

describe Seat do

  it { should belong_to (:passenger) }

  it 'is initialized as available' do
    expect(subject.available?).to eq true
  end

  it 'can be booked' do
    subject.book
    expect(subject.available?).to eq false
  end

end