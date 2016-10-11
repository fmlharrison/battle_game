require 'spec_helper'

feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: "Kanye"
    fill_in :player_2_name, with: "Kittens"
    click_button 'Submit'
    expect(page).to have_content 'Kanye Vs. Kittens'
  end
end
