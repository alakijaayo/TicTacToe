require './lib/player'

describe Player do

  it "informs Player 1 wins" do
    subject.move_x("TL")
    subject.move_x("TR")
    expect(subject.move_x("TC")).to eq("Player 1 Wins!")
  end

  it "informs Player 2 wins" do
    subject.move_o("BC")
    subject.move_o("BR")
    expect(subject.move_o("BL")).to eq("Player 2 Wins!")
  end
end
