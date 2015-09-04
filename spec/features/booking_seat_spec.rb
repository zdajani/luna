require 'rails_helper'

feature 'booking a seat' do

  scenario 'submiting a booking' do
    visit root_path
    click_link 'Book Seat'
    fill_in 'Full Name', with: 'Neil Armstrong'
    click_button 'Next'
  end
end