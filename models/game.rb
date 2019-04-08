require('pry-byebug')
class Game
  
  
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end
  
  
  
  def check_hand
    if (@player1 == 'rock' && @player2 == 'scissors') or
      (@player1 == 'scissors' && @player2 == 'rock')
      @win =  'rock'
    elsif (@player1 == 'scissors' && @player2 == 'paper') or
          (@player1 == 'paper' && @player2 == 'scissors')
      @win = 'scissors'
    elsif (@player1 == 'paper' && @player2 == 'rock') or
          (@player1 == 'rock' && @player2 == 'paper')
      @win = 'paper'
    end
  end
  # removed else return it's a draw as it's now messed up in result.erb returning 'wins with !''
  
  def check_winner
    if @win != nil
      if @player1 == @win
        return "Player one"
      else return "Player two"
      end
    end
  end
  
  
end
#
# binding.pry
#
# nil
