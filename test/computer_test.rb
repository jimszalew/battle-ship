require 'minitest/autorun'
require 'minitest/pride'
require './lib/computer'
require './lib/placement_module'

class ComputerTest < Minitest::Test
  include Placement

  def test_computer_opponent_exists
    computer = Computer.new

    assert_instance_of Computer, computer
  end

  def test_it_can_setup_a_board
    computer = Computer.new
    board = computer.board

    assert_instance_of Grid, board
  end

  def test_it_can_build_ships
    computer = Computer.new
    ships = computer.create_ships

    assert_equal 2, create_ships.count
    assert_instance_of Array, create_ships
    assert_instance_of Ship, create_ships[1]
  end

  def test_it_can_place_head_of_first_ship
  end
end
