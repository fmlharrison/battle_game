require 'player'

describe Player do

  subject(:player1) { described_class.new("Felix") }
  subject(:player2) { described_class.new("Chris") }
  subject(:loser) { described_class.new("Loser", 0) }

  describe "#name" do
    it "returns players name" do
      expect(player1.name).to eq "Felix"
    end
  end

  describe "#hp" do
    it "returns the players current hit points" do
      expect(player1.hp).to eq Player::HP
    end
  end

  describe "#reduce_health" do
    it "reduces the players hp" do
      expect{player1.reduce_health}.to change{player1.hp}.by(-Player::ATTACK_VALUE)
    end
  end

  describe '#set_loser' do
    it 'sets loser to true if HP gets to zero' do
      loser.set_loser
      expect(loser.loser).to be true
    end
  end
end
