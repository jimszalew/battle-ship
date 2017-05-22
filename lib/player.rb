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
end
