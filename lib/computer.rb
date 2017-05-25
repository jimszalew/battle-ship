require './lib/ship'
require './lib/grid'
require './lib/messages'

class Computer

  include Messages

  attr_reader :board

  def initialize
    @board = Grid.new
    startup_message
    two_boat_head
  end

  def two_boat_coord
    board.ships[0].coordinates
  end

  def three_boat_coord
    board.ships[1].coordinates
  end

  def two_boat_head
    row = rand(0..3)
    column = rand(0..3)
    two_boat_coord << [row, column]
    two_boat_tail
  end

  def two_boat_tail
    head = two_boat_coord[0]
    valid_tail = []
    row = rand(0..3)
    col = rand(0..3)
    if valid_tail(row, col, head)
      two_boat_coord << [row, col]
    else
      two_boat_tail
    end
    three_boat_head
  end

  def valid_tail(row, col, head)
    if row == head[0] && (col - head[1] == 1 || head[1] - col == 1)
      return true
    elsif col == head[1] && (row - head[0] == 1 || head[0] - row == 1)
      return true
    elsif (row - head[0] == 1 || head[0] - row == 1) || (col - head[1] == 1 || head[1] - col == 1)
      return true
    else
      return false
    end
  end

  def three_boat_head
    row = rand(0..3)
    col = rand(0..3)
    if two_boat_coord.include? [row, col]
      three_boat_head
    else
      three_boat_tail(row, col)
    end
  end

  def three_boat_tail(row, col)
  end

end
