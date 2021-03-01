
class Player
  attr_accessor :lives, :player
  def initialize(player)
    @lives = 3
    @player = player
  end

  def lose_life 
    self.lives -= 1
  end

  def alive?
    self.lives > 0
  end

end
