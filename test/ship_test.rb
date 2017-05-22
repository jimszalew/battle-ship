require 'minitest/autorun'
require 'minitest/pride'
require './lib/ship'

class ShipTest < Minitest::Test

  def test_a_ship_exists
    boat1 = Ship.new("Patrol_Boat")

    assert_instance_of Ship, boat1
  end

  def test_ships_are_proper_length
    boat1 = Ship.new("Patrol_Boat")
    boat2 = Ship.new("Submarine")

    assert_equal 2, boat1.size
    assert_equal 3, boat2.size
  end

  def test_it_knows_it_is_sunk
    patrol = Ship.new("Patrol_Boat")
    
  end

end
