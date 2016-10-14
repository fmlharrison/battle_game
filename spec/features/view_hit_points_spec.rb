require 'spec_helper'

feature 'See players\' hit points' do
  scenario 'shows the the health of the players' do
    sign_in_and_play
    expect(page.text).to include("100 HP : 100 HP")
  end

  scenario 'Player 2\'s hp is changed after attack' do
    sign_in_and_play
    single_turn
    expect(page.text).to include("100 HP : 90 HP")
  end

  scenario 'Player 1\'s hp is changed after attack' do
    sign_in_and_play
    2.times{single_turn}
    expect(page.text).to include("90 HP : 90 HP")
  end

  scenario 'Shows who attacks first' do
    sign_in_and_play
    expect(page.text).to include("It's Kanye's turn to ATTACK!")
  end

  scenario 'Shows who attacks next' do
    sign_in_and_play
    single_turn
    expect(page.text).not_to include("It's Kanye's turn to ATTACK!")
    expect(page.text).to include("It's Kittens's turn to ATTACK!")
  end
end
