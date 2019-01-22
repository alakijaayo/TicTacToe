class Player

attr_accessor :choices

  def initialize(output: $stdout, input: $stdin)
    @output = output
    @input = input
    @choices = []
  end

  def move
    @output.puts "Choose your position:"
    answer = @input.gets.chomp.upcase
    if @choices.include?(answer)
      self.repeat
      self.move
    else
      @choices.push(answer)
    end
  end

  def repeat
    @output.puts "That space is already taken."
  end
end
