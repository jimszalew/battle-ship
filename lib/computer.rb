require './lib/grid'
require './lib/ship'

class Computer

  def initialize(board_size = 4, number_of_ships = 2)
    @board_size = board_size
    @number_of_ships = number_of_ships
  end

  def board
    Grid.new(4)
  end

  def create_ships
    ships = [boat1, boat2]
    boat1 = Ship.new("Patrol_Boat")
    boat2 = Ship.new("Submarine")
    ships # returns an array of two new ships
  end
end
