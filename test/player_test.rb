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
end
