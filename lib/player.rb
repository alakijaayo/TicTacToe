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
    @board.game == true ? "Player 1 Wins!" : answer

  end

  def move_o(answer)
    @board.user_choice(answer, "O")
    @board.game == true ? "Player 2 Wins!" : answer
  end
end
