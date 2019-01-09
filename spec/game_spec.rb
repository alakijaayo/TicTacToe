require './lib/game'

describe Game do
  it "asks player one to pick a move" do
    allow_any_instance_of(Game).to receive(:gets).and_return("TL")
    expect { subject.run }.to output("Player 1 play: \n").to_stdout
  end
end
