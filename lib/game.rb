class Game

  WIN_OPTIONS = [
    ["BC", "BL", "BR"],
    ["BC", "MC", "TC"],
    ["BL", "MC", "TR"],
    ["BL", "ML", "TL"],
    ["BR", "MC", "TL"],
    ["BR", "MR", "TR"],
    ["MC", "ML", "MR"],
    ["TC", "TL", "TR"]
  ]

attr_accessor :player1, :player2

  def initialize(output: $stdout, input: $stdin)
    @output = output
    @input = input
    @player1 = []
    @player2 = []
    @gameover = false
  end

  def player_1_move
    @output.puts "Player 1, choose your position:"
    answer = @input.gets.chomp.upcase
    if @player1.include?(answer) || @player2.include?(answer)
      puts "That space is already taken."
      self.player_1_move
    else
      @player1.push(answer)
    end
  end

  def player_2_move
    @output.puts "Player 2, choose your position:"
    answer2 = @input.gets.chomp.upcase
    if @player1.include?(answer2) || @player2.include?(answer2)
      puts "That space is already taken."
      self.player_2_move
    else
      @player2.push(answer2)
    end
  end

  def run
    i = 0
    loop do
      i += 1
      player_1_move
      self.winner
      return "Player 1 Wins" if @gameover == true
      return "It's a Draw" if i == 9 && @gameover == false
      i += 1
      player_2_move
      self.winner
      return "Player 2 Wins" if @gameover == true
    end
  end

  def winner
    if WIN_OPTIONS.include?(@player1[0..2].sort)
      @gameover = true
    elsif WIN_OPTIONS.include?(@player2[0..2].sort)
      @gameover = true
    end
  end

end
