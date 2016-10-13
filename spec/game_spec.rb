require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_2) {double :player_2, :reduce_health => nil }
  let(:player_1) {double :player_1}

  describe '#initialize' do
    it 'starts a game with players 1' do
      expect(game.player_1).to eq player_1
    end

    it 'start a game with player 2' do
      expect(game.player_2).to eq player_2
    end
  end

  describe "#attack" do
    it "reduces players hp by 10" do #recive message
      game.attack(player_2)
      expect(player_2).to have_received(:reduce_health)
    end
  end
end
