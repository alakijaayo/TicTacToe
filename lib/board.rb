class Board

  attr_accessor :choices

  def initialize(output: $stdout, input: $stdin)
    @input = input
    @output = output
    @choices = {
      "TL" => " ",
      "TC" => " ",
      "TR" => " ",
      "ML" => " ",
      "MC" => " ",
      "MR" => " ",
      "BL" => " ",
      "BC" => " ",
      "BR" => " "
    }
  end

  def print_board
    @output.puts
    @output.puts "   L   C   R"
    @output.puts "T  #{@choices["TL"]} | #{@choices["TC"]} | #{@choices["TR"]} "
    @output.puts "  ---|---|---"
    @output.puts "M  #{@choices["ML"]} | #{@choices["MC"]} | #{@choices["MR"]} "
    @output.puts "  ---|---|---"
    @output.puts "B  #{@choices["BL"]} | #{@choices["BC"]} | #{@choices["BR"]} "
    @output.puts
    winner
  end

  def user_choice(answer, user)
    if available?(answer)
      @choices[answer] = user
      print_board
    elsif available?(answer) == false
      puts "This position is already taken. Try again:"
      answer = @input.gets.chomp.upcase
      user_choice(answer, user)
    end
  end

  def available?(position)
    @choices[position] == " "
  end

  def win_options
    [
      [@choices["BC"], @choices["BL"], @choices["BR"]],
      [@choices["BC"], @choices["MC"], @choices["TC"]],
      [@choices["BL"], @choices["MC"], @choices["TR"]],
      [@choices["BL"], @choices["ML"], @choices["TL"]],
      [@choices["BR"], @choices["MC"], @choices["TL"]],
      [@choices["BR"], @choices["MR"], @choices["TR"]],
      [@choices["MC"], @choices["ML"], @choices["MR"]],
      [@choices["TC"], @choices["TL"], @choices["TR"]]
    ]
  end

  def winner
    win_options.each do |combos|
      if combos[0] == "X" && combos[1] == "X" && combos[2] == "X"
        return "Player 1 Wins!"
        exit
      elsif combos[0] == "O" && combos[2] == "O" && combos[2] == "O"
        return "Player 2 Wins!"
        exit
      end
    end
  end

end
