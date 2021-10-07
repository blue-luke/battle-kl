def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'J'
  fill_in :player_2_name, with: 'K'
  click_button 'Submit'
end