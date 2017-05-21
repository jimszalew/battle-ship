require 'minitest/autorun'
require 'minitest/pride'
require './lib/ship'
require './lib/computer'
require './lib/player'
require './lib/grid'
require './lib/placement_module'

class TestPlacement < Minitest::Test

  include Placement

  def test_it_can_create_ships
    computer = Computer.new

    assert_equal 2, create_ships.count
    assert_instance_of Array, create_ships
    assert_instance_of Ship, create_ships[1]
  end

  def test_it_can_run_place_method_for_computer_ships
    computer = Computer.new

    assert_equal 2, computer.place.count
  end
end
