require 'player'

describe Player do

  subject(:player1) { described_class.new("Felix") }
  subject(:player2) { described_class.new("Chris") }

  describe "#name" do
    it "returs players name" do
      expect(player1.name).to eq "Felix"
    end
  end

  describe "#hp" do
    it "returns the players current hit points" do
      expect(player1.hp).to eq Player::HP
    end
  end

  describe "#attack" do
    it "reduces plays hp by 10" do
      expect{player1.attack(player2)}.to change{player2.hp}.by(-10)
    end
  end


end
