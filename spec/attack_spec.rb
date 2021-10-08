feature 'Attacking' do
  # As Player 1,
  # So I can win a game of Battle,
  # I want to attack Player 2, and I want to get a confirmation
  scenario 'attack Player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'J attacked K'
  end

  # As Player 1,
  # So I can lose a game of Battle,
  # I want Player 2 to attack me, and I want to get a confirmation
  scenario 'be attacked by Player 2' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'OK'
    click_button 'Attack'
    expect(page).to have_content 'K attacked J'
  end
    # As Player 1,
  # So I can start to win a game of Battle,
  # I want my attack to reduce Player 2's HP by 10
  scenario 'reduce Player 2 HP by 10' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'OK'
    expect(page).not_to have_content 'K has 100 hit points'
    expect(page).to have_content 'K has 90 hit points'
  end

  scenario 'reduce Player 1 HP by 10' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'OK'
    click_button 'Attack'
    click_button 'OK'
    expect(page).not_to have_content 'J has 100 hit points'
    expect(page).to have_content 'J has 90 hit points'
  end

end