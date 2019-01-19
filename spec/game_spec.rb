require './lib/game'

describe Game do
  it "asks player one to pick a move" do
    allow_any_instance_of(Game).to receive(:gets).and_return("TL")
    expect { subject.run }.to output("Choose your position:\n").to_stdout
  end

  it "should receive an answer from the user" do
    allow_any_instance_of(Game).to receive(:gets).and_return("TL")
    expect(subject.run).to eq("TL")
  end

end
