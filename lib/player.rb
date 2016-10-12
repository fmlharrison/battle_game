

class Player
  attr_reader :name, :hp

  HP = 100
  ATTACK_VALUE = 10

  def initialize(name, hp=HP)
    @name = name
    @hp = hp
  end

  def reduce_health
    @hp -= 10
  end

end
