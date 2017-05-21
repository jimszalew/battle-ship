module Placement

  def create_ships(number_of_ships = 2)
    ships = ["Patrol_Boat", "Submarine"]
    ships = ships[0..(number_of_ships - 1)]
    ships.map { |ship| Ship.new(ship)}
  end

  def place(board_size = 4, number_of_ships = 2)
    ships = create_ships
    ships.each do |ship|
      ship_placement(ship, board_size)
    end
  end
end
