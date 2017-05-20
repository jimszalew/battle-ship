require './lib/grid'
require './lib/ship'

class Computer

  def board
    Grid.new(4)
  end

  def create_ships
    boat1 = Ship.new("Patrol_Boat")
    boat2 = Ship.new("Submarine")
  end
end
