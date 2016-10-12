require 'spec_helper'

feature 'Attack' do
  scenario 'play 1 attacks player 2' do
    sign_in_and_play
    click_button('Attack!')
    expect(page).to have_content('Kanye lays the SMACKDOWN on Kittens!')
  end
end
