require './lib/player'

class Game

  def initialize(output: $stdout, input: $stdin)
    @output = output
    @input = input
    @player = Player.new
  end

  def start_game
    @output.puts "Welcome to Tic Tac Toe/Noughts and Crosses!"
    @output.puts "This is a two player game, so hope you have a friend."
    @output.puts "To pick a square, please put the initials. For example, bottom left will be 'BL'"
    @output.puts "Let's begin!"
  end

  def player_1_move
    @output.puts "Player 1, choose your position:"
    answer = @input.gets.chomp.upcase
    @player.move_x(answer)
  end

  def player_2_move
    @output.puts "Player 2, choose your position:"
    answer2 = @input.gets.chomp.upcase
    @player.move_o(answer2)
  end

  def run
    start_game
    i = 0
    while true do
      player_1_move
      i += 1
      return "Player 1 Wins!" if @player.board.game == true
      return "It's a Draw" if i == 9
      player_2_move
      i += 1
      return "Player 2 Wins" if @player.board.game == true
    end
  end

end
