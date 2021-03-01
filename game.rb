require './player'

class Game
  attr_reader :winner, :player1, :player2
  attr_accessor :player_input, :current_player

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = player1
    @player_input
    @winner
  end

  def change_player
    if self.current_player == self.player1
      self.current_player = player2
    else 
      self.current_player = player1
    end
  end

  def life_status
    puts "Player 1(#{self.player1.name}): #{self.player1.lives}/3 --- Player 2(#{self.player2.name}): #{self.player2.lives}/3"
  end

  def winner?
    if self.player1.lives > self.player2.lives
      @winner = self.player1
    else 
      @winner = self.player2
    end
  end

end 
