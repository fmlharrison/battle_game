require 'spec_helper'

feature 'Attack' do
  scenario 'player 1 attacks player 2' do
    sign_in_and_play
    click_button('Attack!')
    expect(page).to have_content('Kanye lays the SMACKDOWN on Kittens!')
  end

  scenario 'player 2\'s health is reduced by 10 when attacked' do
    sign_in_and_play
    click_button('Attack!')
    expect(page).to have_content('Kittens\'s HP was reduced by 10')
  end

  scenario 'player 2 attacks player 1' do
    sign_in_and_play
    click_button('Attack!')
    click_button('Next Turn!')
    click_button('Attack!')
    expect(page).to have_content('Kittens lays the SMACKDOWN on Kanye!')
  end

  scenario 'player 2 attacks player 1 after they were attacked' do
    sign_in_and_play
    click_button('Attack!')
    click_button('Next Turn!')
    click_button('Attack!')
    expect(page).to have_content('Kanye\'s HP was reduced by 10')
  end
end
