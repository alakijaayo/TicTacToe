require './lib/board'

describe Board do

  it "prints the board" do
    output = StringIO.new
    board = Board.new(output: output)
    board.print_board
    output.rewind
    expect(output.read).to eq("\n   L   C   R\nT  #{@TL} | #{@TC} | #{@TR} \n  ---|---|---\nM  #{@ML} | #{@MC} | #{@MR} \n  ---|---|---\nB  #{@BL} | #{@BC} | #{@BR} \n\n")
  end
end
