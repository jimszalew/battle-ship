require './lib/grid'
require './lib/ship'
require './lib/messages'
require './lib/computer'
require './lib/player'

class Game

  include Messages

  attr_accessor :player,
                :computer

  def initialize
    @player = nil
    @computer = nil
    @game_over = false
  end

  def start
    welcome
    request_input
  end

  def selection(input)
    if invalid?(input)
      invalid_input
      request_input
    elsif instructions?(input)
      read_instructions
      request_input
    elsif quit?(input)
      quits
    elsif play?(input)
      player_setup
    end
  end

  def play?(input)
    input == "p" || input == "play"
  end

  def instructions?(input)
    input == "i" || input == "instructions"
  end

  def quit?(input)
    input == "q" || input == "quit"
  end

  def invalid?(input)
    valid = ["p","play","i","instructions","q","quit"]
      !valid.include?(input)
  end

  def request_input
    request_input_message
    input = gets.chomp
    selection(input)
  end

  def player_setup
    player = Player.new
    computer = Computer.new
  end

# ships.each do |ship|
  #comp_ships << ship.coordinates
  #end
  #comp_ships should look like
  #[[[0,1],[1,1]], [[1,1],[1,2],[1,3]]]

end
