require 'spec_helper'

feature 'See player 2\'s hit points' do
  scenario 'shows the the health of the players' do
    sign_in_and_play
    expect(page.text).to include("100 HP : 100 HP")
  end
end
