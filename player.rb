
class Player
  attr_accessor :lives
  attr_reader :name, :player
  def initialize(player)
    @lives = 3
    @player = player
    @name = player
  end

  def lose_life 
    self.lives -= 1
  end

  def alive?
    self.lives > 0
  end

end
