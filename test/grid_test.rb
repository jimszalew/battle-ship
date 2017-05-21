require 'minitest/autorun'
require 'minitest/pride'
require './lib/grid'

class GridTest < Minitest::Test

  def test_it_exists
    grid = Grid.new
    assert_instance_of Grid, grid
  end

  def test_it_can_set_size_of_columns
    grid = Grid.new

    assert_equal 4, grid.columns(4).length
  end

  def test_it_can_set_size_of_rows
    grid = Grid.new

    assert_equal 4, grid.rows.length
  end
end
