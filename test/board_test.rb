require './test/test_helper'
require './lib/board'
require 'pry'

class BoardTest < Minitest::Test

  def test_it_exists
    board = Board.new

    assert_instance_of Board, board
  end

  def test_it_can_create_its_cells
    board = Board.new
    board.make_cells

    cells = board.cells
    rand_key = 'B2'

    assert_instance_of Hash, cells
    assert_instance_of Cell, cells[rand_key]
    assert_equal 16, board.keys.count
  end
end
