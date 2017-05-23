require './lib/grid'
require './lib/ship'
require './lib/placement_module'
require './lib/messages_module'
require 'pry'

class Player

  include Placement
  include Messages

  attr_reader :player_arrangement,
              :player_shots,
              :ships,
              :all_ship_coordinates,
              :shots

  def initialize(board_size = 4, number_of_ships = 2)
    @player_arrangement = Grid.new(board_size)
    @player_shots = Grid.new(board_size)
    @ships = []
    @all_ship_coordinates = []
    @shots = []
  end

  def head_placement(ship, board_size)
    placement_message(ship.size)
    coordinates = gets.chomp
    if coordinates == ""
      head_placement(ship, board_size)
    else
      get_valid_coordinates(ship, coordinates)
    end
  end

  def valid_placement?(head, tail)
    position = false
    if horizontal?(head, tail) || vertical?(head, tail)
      position = true
    else
      placement_error
    end
    position
  end

  def horizontal?(head, tail)
    head[0] == tail[0]
  end

  def vertical?(head, tail)
    head[1] == tail[1]
  end

  def valid_length?(head, tail, ship)
    valid = false
    if horizontal_length(head, tail, ship) || vertical_length(head, tail, ship)
      valid = true
    else
      invalid_tail_message
    end
    valid
  end

  def horizontal_length(head, tail, ship)
    tail[1].to_i - head[1].to_i == ship.size - 1
  end

  def vertical_length(head, tail, ship)
    abcd.index(tail[0].upcase) - abcd.index(head[0].upcase) == ship.size - 1
  end

  def no_wrap?(head, tail)
    no_wrap = false
    if no_horizontal_wrap(head, tail) && no_vertical_wrap(head, tail)
      no_wrap = true
    else
      ship_wrap_message
    end
    no_wrap
  end

  def no_vertical_wrap(head, tail)
    columns = abcd[0..player_arrangement.size - 1]
    columns.include?(head[0].upcase) && columns.include?(tail[0].upcase)
  end

  def no_horizontal_wrap(head, tail)
    rows = (1..player_arrangement.size).to_a
    rows.include?(head[1].to_i) && rows.include?(tail[1].to_i)
  end

  def get_valid_coordinates
    coord = coordinate.split(" ")
    ship_head = [coord[0][0], coord[0][1..2]]
    ship_tail = [coord[1][0], coord[1][1..2]]
    set_middle(ship, ship_head, ship_tail)
    set_valid(ship_head, ship_tail, ship)
  end

  def set_middle(ship, ship_head, ship_tail)
  end

  def set_valid(ship_head, ship_tail, ship)
  end
end
