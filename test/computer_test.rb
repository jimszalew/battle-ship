require 'minitest/autorun'
require 'minitest/pride'
require './lib/computer'
require 'pry'
class ComputerTest < Minitest::Test

  def test_computer_opponent_exists
    computer = Computer.new

    assert_instance_of Computer, computer
  end

  def test_it_can_setup_a_board
    computer = Computer.new
    board = Grid.new

    assert_instance_of Grid, board
  end

  def test_it_can_place_the_first_ships_head
    computer = Computer.new
    computer.two_boat_head

    refute_nil two_boat_coord
  end

  def test_it_can_assign_two_coordinates
    computer = Computer.new
    patrol = Ship.new(2)
    patrol.coordinates << [0,0]
    patrol.coordinates << [0,1]

    assert_equal 2, patrol.coordinates.count
  end
end
