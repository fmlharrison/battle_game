require_relative 'player'

class Game
 
  attr_reader :turn

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @turn = [player_1, player_2]
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def attack(player)
    player.reduce_health
    new_turn
  end

  def new_turn
    @turn.rotate!
  end

end
