require './player'

class Game 
  def initialize()
    players = [Player.new('Player 1'), Player.new('Player 2')]
    turn = 0
    while players[0].lives > 0 && players[1].lives > 0
      puts "----- NEW TURN -----"
      num1 = rand(1..20)
      num2 = rand(1..20)
      ans = num1 + num2
      puts "#{players[turn].name}: What does #{num1} plus #{num2} equal?"
      pans = gets.chomp.to_i
      if pans != ans
        puts "INCORRECT"
        players[turn].lives -= 1
      end
      if pans == ans
        puts "CORRECT"
      end
      puts "P1: #{players[0].lives}/3 P2: #{players[1].lives}/3"
      turn = (turn + 1) % 2
    end
    winner = players[0].lives == 0 ? 1 : 0
    puts "#{players[winner].name} wins with a score of #{players[winner].lives}/3"
  end
end