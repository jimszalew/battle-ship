require './lib/grid'
require './lib/ship'
# require './lib/placement_module'
require 'pry'
class Computer
  # include Placement
  attr_reader :computer_arrangement,
              :computer_shots,
              :ships,
              :shots
  attr_accessor :all_ship_coordinates

  def initialize(board_size = 4, number_of_ships = 2)
    @computer_arrangement = Grid.new
    @computer_shots = Grid.new
    @ships = []
    @all_ship_coordinates
    @shots = []
    place(board_size, number_of_ships)
  end

  def create_ships(number_of_ships = 2)
    @ships = ["Patrol_Boat", "Submarine"]
    @ships = @ships[0..(number_of_ships - 1)]
    @ships.map { |ship| Ship.new(ship)}
  end

  def place(board_size = 4, number_of_ships = 2)
    @ships = create_ships
    @ships.each do |ship|
      ship_placement(ship, board_size)
    end
  end

  def ship_placement(ship, board_size)
    assign_head(ship, board_size)
    validate_coordinates(ship, board_size)
  end

  def assign_head(ship, board_size)
    if horizontal?
      horizontal_ship(ship, board_size)
    else
      vertical_ship(ship, board_size)
    end
  end

  def horizontal_ship(ship, board_size)
    column = rand(board_size - ship.size)
    row = rand(board_size)
    ship << [row, column]
    assign_tail(ship, true)
  end

  def vertical_ship(ship, board_size)
    column = rand(board_size)
    row = rand(board_size - ship.size)
    ship << [row, column]
    assign_tail(ship, false)
  end

  def horizontal?
    random = rand(2).to_i
    random.zero?
  end

  def assign_tail(ship, horizontal)
    row = ship.coordinates.first.first
    column = ship.coordinates.first.last
    full_ship(ship, horizontal, row, column)
  end

  def full_ship(ship, horizontal, row, column)
    if horizontal
      (ship.size - 1).times do |i|
        ship.coordinates << [row, column + i + 1]
      end
    else
      (ship.size - 1).times do |i|
        ship.coordinates << [row + i + 1, column]
      end
    end
  end

  def validate_coordinates(ship, board_size)
  end
end
binding.pry
""
