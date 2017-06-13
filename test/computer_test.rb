require './test/test_helper'
require './lib/computer'
require 'pry'

class ComputerTest < Minitest::Test

  def test_it_exists
    computer = Computer.new

    assert_instance_of Computer, computer
  end

  def test_it_can_build_a_board
    computer = Computer.new

    assert_instance_of Board, computer.board
  end
end
