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

  def initialize
    @player1 = []
    @player2 = []
  end

  def player_1_move
    puts "Player 1, choose your position:"
    answer = gets.chomp.upcase
    @player1.push(answer)
  end

  def player_2_move
    puts "Player 2, choose your position:"
    answer2 = gets.chomp.upcase
    @player2.push(answer2)
  end

  def winner
    WIN_OPTIONS.include?(@player1[0..2].sort) ? "Player 1 Wins" : WIN_OPTIONS.include?(@player2[0..2].sort) ? "Player 2 Wins" : "It's a Draw"
  end


end
