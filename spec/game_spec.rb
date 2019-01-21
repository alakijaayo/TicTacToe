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
    game = Game.new(input: input, output: output)
    expect(game.player_2_move).to eq(["TR"])
  end

  it "should show player 1 as winner" do
    subject.player1 = ["TL", "TR", "TC"]
    expect(subject.winner).to eq("Player 1 Wins")
  end

  it "should show player 2 as winner" do
    subject.player2 = ["MC", "MR", "ML"]
    expect(subject.winner).to eq("Player 2 Wins")
  end

  it "should produce a draw" do
    subject.player1 = ["TL", "MR", "MC"]
    subject.player2 = ["TC", "BL", "ML"]
    expect(subject.winner).to eq("It's a Draw")
  end

end
