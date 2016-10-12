require 'spec_helper'

feature 'See player 2\'s hit points' do
  scenario 'shows the the health of player 2' do
    visit('/')
    fill_in :player_1_name, with: "Kanye"
    fill_in :player_2_name, with: "Kittens"
    click_button 'Submit'

    expect(page.text).to include("Player 2's Hit Points : 100HP")
  end
end
