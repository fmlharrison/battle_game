def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: "Kanye"
  fill_in :player_2_name, with: "Kittens"
  click_button 'Fight!'
end
