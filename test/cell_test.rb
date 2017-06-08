require './test/test_helper'
require './lib/cell'
require 'pry'

class CellTest < Minitest::Test

  def test_it_exists
    cell = Cell.new('A1')

    assert_instance_of Cell, cell
  end

  def test_it_can_be_assigned_coordinates
    cell = Cell.new('A1')
    cell.assign(cell.input)
    coordinates = cell.coordinates

    assert_instance_of Hash, coordinates
    assert coordinates.keys.include?('A1')
    assert_equal 'A', coordinates.values[0][0]
    assert_equal '1', coordinates.values[0][1]
  end
end
