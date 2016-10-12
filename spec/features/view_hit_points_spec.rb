require 'spec_helper'

feature 'See player 2\'s hit points' do
  scenario 'shows the the health of player 2' do
    sign_in_and_play
    expect(page.text).to include("Kittens's Hit Points : 100HP")
  end
end
 
