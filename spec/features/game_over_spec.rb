require 'spec_helper'

feature 'game over' do

  scenario 'player reaches zero HP' do
    sign_in_and_play
    19.times {single_turn}
    expect(page).to have_content "Kittens has been defeated and has brought shame to their family"
  end

end
