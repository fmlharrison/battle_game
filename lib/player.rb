class Player
  attr_reader :name, :hp

  HP = 100
  ATTACK_VALUE = 10

  def initialize(name, hp=HP)
    @name = name
    @hp = hp
  end

  def attack(player)
    player.reduce_health
  end

  def reduce_health
    @hp -= ATTACK_VALUE
  end

end
