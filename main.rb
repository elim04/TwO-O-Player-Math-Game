
require './game'
require './player'
require './question'

#Begin the game

puts "Welcome to TwO-O-Player Math Game!"
puts "Player 1, please enter your name."

#Player set up

player_name1 = gets.chomp
player1 = Player.new(player_name1)

puts "Player 2, please enter your name."
player_name2 = gets.chomp
player2 = Player.new(player_name2)

puts "LET'S BEGIN THE GAME!"

#while both players are alive keep doing new turn otherwise its game over and report winner

game = Game.new(player1, player2)

while game.player1.alive? && game.player2.alive?
  puts "#{game.current_player.name} it is your turn!"
  
  question = Question.new
  question.read_question
  player_input = gets.chomp
  
  if question.result(player_input)
    puts "YES! You are correct."
  else
    puts "Seriously? No!"
    game.current_player.lose_life
  end
  
  #switch player and report status, next turn
  game.change_player
  game.life_status
  
  puts "----- NEW TURN  -----"
end

puts "----- GAME OVER -----"
# game.life_status
game.winner?

puts "#{game.winner.name} is the winner with a score of #{game.winner.lives}/3!!"

