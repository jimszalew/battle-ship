require 'minitest/autorun'
require 'minitest/pride'
require './lib/computer'

class ComputerTest < Minitest::Test

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

    assert_instance of Ship, boat1
    assert_instance of Ship, boat2
  end
end
