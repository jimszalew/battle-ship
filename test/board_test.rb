require './test/test_helper'
require './lib/board'
require 'pry'

class BoardTest < Minitest::Test

  def test_it_exists
    board = Board.new

    assert_instance_of Board, board
  end

  def test_it_can_create_its_cells_and_cells_are_empty
    board = Board.new
    board.make_cells

    cells = board.cells

    assert_instance_of Hash, cells
    assert_equal 16, cells.count
    assert_equal 'empty', cells["A1"][:status]
    assert_equal 'empty', cells["B2"][:status]
    assert_equal 'empty', cells["C3"][:status]
    assert_equal 'empty', cells["D4"][:status]
  end
end
