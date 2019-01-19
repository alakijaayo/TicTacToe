require './lib/game'
 

describe Game do
  it "asks player one to pick a move" do
    allow_any_instance_of(Game).to receive(:gets).and_return("TL")
    expect { subject.player_1_move }.to output("Player 1, choose your position:\n").to_stdout
  end

  it "should receive and store answer from player 1" do
    allow_any_instance_of(Game).to receive(:gets).and_return("TL")
    expect(subject.player_1_move).to eq(["TL"])
  end

  it "asks player two to pick a move" do
    allow_any_instance_of(Game).to receive(:gets).and_return("TR")
    expect { subject.player_2_move }.to output("Player 2, choose your position:\n").to_stdout
  end

  it "should receive and store answer from player 2" do
    allow_any_instance_of(Game).to receive(:gets).and_return("TR")
    expect(subject.player_2_move).to eq(["TR"])
  end

end
