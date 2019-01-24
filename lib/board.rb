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
  end

  def user_choice(answer, user)
    if available?(answer)
      @choices[answer] = user
    elsif available?(answer) == false
      puts "This position is already taken. Try again:"
      answer = @input.gets.chomp.upcase
      user_choice(answer, user)
    end
  end

  def available?(position)
    @choices[position] == " "
  end

end
