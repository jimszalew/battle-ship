require 'minitest/autorun'
require 'minitest/pride'
require './lib/runner'

class RunnerTest < Minitest::Test

  def test_it_exists
    game = Runner.new
    assert_instance_of Runner, game
  end

  def test_user_can_quit
    game = Runner.new
    assert_nil game.selection("q")
    assert_nil game.selection("quit")
  end

  def test_it_can_spot_invalid_responses
    game = Runner.new
    assert game.invalid?("g")
    refute game.invalid?("p")
  end

end
