

class Player
  attr_reader :name, :hp, :loser

  HP = 100
  ATTACK_VALUE = 10

  def initialize(name, hp=HP)
    @name = name
    @hp = hp
    @loser = false
  end

  def reduce_health
    @hp -= 10
  end

  def set_loser
    @loser = true if @hp == 0
  end
end
