require 'minitest/autorun'
require 'minitest/pride'
require './lib/player'
require './lib/grid'
require './lib/ship'

class TestPlayer < Minitest::Test

  def test_player_exists
    player = Player.new

    assert_instance_of Player, player
  end
end
