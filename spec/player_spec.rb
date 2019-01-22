require './lib/player'

describe Player do

  it "Asks the player to pick a move" do
    output = StringIO.new
    player = Player.new(output: output)
    player.move
    expect(output.string).to eq("Choose your position:\n")
  end

  it "receives and stores the answer" do
    input = StringIO.new("TR\n")
    output = StringIO.new
    player = Player.new(input: input, output: output)
    expect(player.move).to eq(["TR"])
  end

  it "Asks the player to choose again if place is already taken" do
    output = StringIO.new
    player = Player.new(output:output)
    player.repeat
    expect(output.string).to eq ("That space is already taken.\n")
  end
end
