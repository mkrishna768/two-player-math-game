# game
##num1
##num2
##ans
##playerturn
##gameloop
require './player'

class Game 
  def initialize()
    players = [Player.new('Player 1'), Player.new('Player 2')]
    turn = 1
    while players[0].lives > 0 && players[1].lives > 0
      puts "----- NEW TURN -----"
      num1 = 1
      num2 = 2
      puts "#{players[turn - 1].name}: What does #{num1} plus #{num2} equal?"
    end
  end
end