require './lib/game'

describe Game do

  it "starts the game" do
    output = StringIO.new
    game = Game.new(output: output)
    game.start_game
    output.rewind
    expect(output.read).to eq("Welcome to Tic Tac Toe/Noughts and Crosses!\nThis is a two player game, so hope you have a friend.\nTo pick a square, please put the initials. For example, bottom left will be 'BL'\nLet's begin!\n")
  end

  it "asks player one to pick a move" do
    output = StringIO.new
    game = Game.new(output: output)
    game.player_1_move
    expect(output.string).to eq("Player 1, choose your position:\n")
  end

  it "should receive and store answer from player 1" do
    input = StringIO.new("TL\n")
    output = StringIO.new
    game = Game.new(input: input, output: output)
    expect(game.player_1_move).to eq("TL")
  end

  it "asks player two to pick a move" do
    output = StringIO.new
    game = Game.new(output: output)
    game.player_2_move
    expect(output.string).to eq("Player 2, choose your position:\n")
  end

  it "should receive and store answer from player 2" do
    input = StringIO.new("TR\n")
    output = StringIO.new
    game = Game.new(input: input, output: output)
    expect(game.player_2_move).to eq("TR")
  end

end
