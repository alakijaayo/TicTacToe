class Board

  def initialize(output: $stdout)
    @output = output
  end

  def squares
    [@TL, @TC, @TR, @ML, @MC, @MR, @BL, @BC, @BR]
  end

  def new_board
    @TL = " "
    @TC = " "
    @TR = " "
    @ML = " "
    @MC = " "
    @MR = " "
    @BL = " "
    @BC = " "
    @BR = " "
  end

  def print_board
    @output.puts
    @output.puts "   L   C   R"
    @output.puts "T  #{@TL} | #{@TC} | #{@TR} "
    @output.puts "  ---|---|---"
    @output.puts "M  #{@ML} | #{@MC} | #{@MR} "
    @output.puts "  ---|---|---"
    @output.puts "B  #{@BL} | #{@BC} | #{@BR} "
    @output.puts
  end

end
