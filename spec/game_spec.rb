require 'Game'

describe Game do

  subject(:game) {described_class.new}
  let(:player_1) {double :player}
  let(:player_2) {double :player}

  describe '#attack' do
    it 'receiving player takes damage, hit points reduce' do
      expect(player_2).to receive(:get_hit)
      game.attack(player_2)
    end
  end
end