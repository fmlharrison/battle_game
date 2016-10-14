require_relative 'player'

class Game

  attr_reader :turn, :losing_player

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @turn = [player_1, player_2]
    @losing_player = nil
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def attack(player)
    player.reduce_health
    player.set_loser
    set_losing_player(player)
    new_turn
  end

  def new_turn
    @turn.rotate!
  end

  def set_losing_player(player)
    @losing_player = player if player.loser
  end
end
