require 'player'

describe Player do
  subject(:charlotte) { Player.new('Charlotte') }
  subject(:ian) { Player.new('Ian') }

  describe '#name' do
    it 'returns the name' do
      expect(charlotte.name).to eq 'Charlotte'
    end
  end

  describe 'hit_points' do
    it 'gets initialized with 100' do
      expect(charlotte.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  # describe 'player 1 hits player 2' do
  #   it 'player 2 loses 10 points' do
  #     expect{charlotte.hit(ian)}. to change {ian.hit_points}.by(-10)
  #   end
  # end

end