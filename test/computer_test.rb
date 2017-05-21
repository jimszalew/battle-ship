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
    assert_equal "Patrol_Boat", ships.first.name
  end

  def test_it_can_place_head_of_ship
    computer = Computer.new
    submarine = Ship.new("Submarine")
    submarine.coordinates << [0,0]

    assert_equal 1, submarine.coordinates.count
  end

  def test_it_can_place_full_patrol_boat
    computer = Computer.new
    patrol = Ship.new("Patrol_Boat")
    patrol.coordinates << [0,0]
    patrol.coordinates << [0,1]

    assert_equal 2, patrol.coordinates.count
  end

  def test_it_can_place_sub_and_patrol
    computer = Computer.new
    patrol = Ship.new("Patrol_Boat")
    submarine = Ship.new("Submarine")
    patrol.coordinates << [0,0]
    patrol.coordinates << [0,1]
    submarine.coordinates << [1,0]
    submarine.coordinates << [1,1]
    submarine.coordinates << [1,2]

    assert_equal 2, patrol.coordinates.count
    assert_equal 3, submarine.coordinates.count
  end

  def test_it_can_make_ships_horizontal_or_vertical
    computer = Computer.new
    patrol = Ship.new("Patrol_Boat")
    patrol.coordinates << [0,0]
  end
end
