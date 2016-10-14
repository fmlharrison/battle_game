require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  subject(:ending_game) {described_class.new(player_1, loser)}
  let(:player_2) {double :player_2, :reduce_health => nil }
  let(:player_1) {double :player_1}
  let(:loser) {double :player, loser: true}


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
      allow(player_2).to receive(:set_loser){}
      allow(game).to receive(:set_losing_player) {}
      game.attack(player_2)
      expect(player_2).to have_received(:reduce_health)
    end
    it "rotates the players turns" do
      allow(player_2).to receive(:set_loser){}
      allow(game).to receive(:set_losing_player) {}
      allow(game).to receive(:new_turn)
      game.attack(player_2)
      expect(game).to have_received(:new_turn)
    end
  end

  describe '#new_turn' do
    it "changes the player turn" do
      game.new_turn
      expect(game.turn[0]).to eq player_2
    end
  end

  describe '#set_losing_player' do
    it 'should set losing player' do
      ending_game.set_losing_player(loser)
      expect(ending_game.losing_player).to eq loser
    end
  end

end
