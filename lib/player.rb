require './lib/board'

class Player

  attr_reader :board

  def initialize(output: $stdout, input: $stdin)
    @board = Board.new
    @output = output
    @input = input
  end

  def move_x(answer)
    @board.user_choice(answer, "X")
    return "Player 1 Wins!" if @board.game == true
  end

  def move_o(answer)
    @board.user_choice(answer, "O")
    return "Player 2 Wins!" if @board.game == true
  end
end
