require 'rails_helper'

feature 'booking a flight' do 
  scenario 'submiting a booking' do
    visit root_path
    click_link 'Book Flight'
    fill_in 'full_name', with: 'Neil Armstrong'
    select 'A1', from: 'Seats'
    click_button 'Submit'
  end
end