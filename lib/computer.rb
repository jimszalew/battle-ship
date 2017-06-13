require './lib/board'

class Computer

  attr_reader :board

  def initialize
    @board = board
  end

  def board
    Board.new
  end
end
