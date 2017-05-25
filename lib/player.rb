require './lib/ship'
require './lib/grid'

class Player

  attr_reader :ships

  def initialize
    @board
  end

  def board
    Grid.new(4)
  end
end
