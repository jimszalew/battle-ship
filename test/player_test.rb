require 'minitest/autorun'
require 'minitest/pride'
require './lib/player'
require './lib/grid'
require './lib/ship'

class PlayerTest < Minitest::Test

  def test_player_exists
    player = Player.new

    assert_instance_of Player, player
  end

  def test_it_can_setup_a_board
    player = Player.new
    board = Grid.new

    assert_instance_of Grid, board
  end

  def test_it_can_build_ships
    player = Player.new
    ships = player.create_ships

    assert_equal 2, player.create_ships.count
    assert_instance_of Array, player.create_ships
    assert_instance_of Ship, player.create_ships[1]
    assert_equal "Patrol_Boat", ships.first.name
  end

  def test_it_can_input_valid_head_tail_pairs_of_coordinates
    player = Player.new
    patrol = Ship.new("Patrol_Boat")
    submarine = Ship.new("Submarine")

    assert player.valid_placement?(["A","1"], ["A","2"])
    assert player.valid_placement?(["A","1"], ["B","1"])
    refute player.valid_placement?(["A","1"], ["B","2"])
    refute player.valid_placement?(["B","1"], ["C","4"])
  end

  def test_ships_are_valid_length
    player = Player.new
    patrol = Ship.new("Patrol_Boat")
    submarine = Ship.new("Submarine")

    assert player.valid_length?(["A","1"], ["A","2"], patrol)
    assert player.valid_length?(["A","1"], ["A","3"], submarine)
    refute player.valid_length?(["A","1"], ["A","4"], patrol)
    refute player.valid_length?(["A","1"], ["A","2"], submarine)
  end

  def test_ships_dont_wrap_around_board
    player = Player.new
    patrol = Ship.new("Patrol_Boat")
    submarine = Ship.new("Submarine")

    assert player.no_wrap?(["A","1"], ["A","4"])
    refute player.no_wrap?(["D","4"], ["D","6"])
    refute player.no_wrap?(["D","1"], ["F","1"])
  end

  def test_ships_dont_overlap
    player = Player.new
    patrol = Ship.new("Patrol_Boat")
    submarine = Ship.new("Submarine")

    assert 
  end
end
