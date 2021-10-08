feature 'Game over' do
  context 'when player 1 reaches 0HP first' do
    before do #not sure what the below achieves
      sign_in_and_play
      attack_and_confirm
      allow(Kernel).to receive(:rand).and_return(101)
    end

    scenario 'player 1 loses' do
      click_button 'Attack'
      print 'P1 has this many points:'
      print $game.player_1.hit_points
      expect(page).to have_content 'J loses!'
    end
  end
end