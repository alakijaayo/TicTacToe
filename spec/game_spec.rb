require './lib/game'

describe Game do

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
    expect(game.player_1_move).to eq(["TL"])
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
    game = Game.new(input: test_input, output: test_output)
    expect(game.player_2_move).to eq(["TR"])
  end

end
