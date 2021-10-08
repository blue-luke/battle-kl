class Player
  attr_reader :name, :hit_points, :get_hit

  DEFAULT_HIT_POINTS = 100

  def initialize(name)
    @name = name
    @hit_points = DEFAULT_HIT_POINTS
  end

  def get_hit
    @hit_points -= 10
  end

  def hit(player)
    player.get_hit
  end

end