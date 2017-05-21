module Placement
  def create_ships(number_of_ships = 2)
    ships = ["Patrol_Boat", "Submarine"]
    ships = ships[0..(number_of_ships - 1)]
    ships.map { |ship| Ship.new(ship)}
  end
end
