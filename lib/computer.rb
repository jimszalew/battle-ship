require './lib/grid'
require './lib/ship'
require './lib/placement_module'

class Computer

  include Placement
  
  def initialize(board_size = 4, number_of_ships = 2)
    @board_size = board_size
    @number_of_ships = number_of_ships
  end

  def board
    Grid.new(4)
  end




end
