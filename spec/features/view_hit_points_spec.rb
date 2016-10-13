require 'spec_helper'

feature 'See players\' hit points' do
  scenario 'shows the the health of the players' do
    sign_in_and_play
    expect(page.text).to include("100 HP : 100 HP")
  end

  scenario 'Player 2\'s hp is changed after attack' do
    sign_in_and_play
    click_button('Attack!')
    click_button("Next Turn!")
    expect(page.text).to include("100 HP : 90 HP")
  end

  scenario 'Player 1\'s hp is changed after attack' do
    sign_in_and_play
    click_button('Attack!')
    click_button('Next Turn!')
    click_button('Attack!')
    click_button('Next Turn!')
    expect(page.text).to include("90 HP : 90 HP")
  end
end
