require './lib/board'

describe Board do

  it "prints the board" do
    output = StringIO.new
    board = Board.new(output: output)
    board.print_board
    output.rewind
    expect(output.read).to eq("\n   L   C   R\nT  #{board.choices["TL"]} | #{board.choices["TC"]} | #{board.choices["TR"]} \n  ---|---|---\nM  #{board.choices["ML"]} | #{board.choices["MC"]} | #{board.choices["MR"]} \n  ---|---|---\nB  #{board.choices["BL"]} | #{board.choices["BC"]} | #{board.choices["BR"]} \n\n")
  end

  it "takes user choice and changes position" do
    subject.user_choice("BL", "X")
    expect(subject.choices["BL"]).to eq("X")
  end

  it "checks if a position is available" do
    expect(subject.available?("ML")).to eq(true)
  end

  it "informs you if a position is not available" do
    subject.choices["TL"] = "X"
    expect(subject.available?("TL")).to eq(false)
  end

  it "gives us a winner" do
    subject.choices["TL"] = "X"
    subject.choices["TC"] = "X"
    subject.choices["TR"] = "X"
    subject.winner
    expect(subject.game).to eq(true)
  end

end
