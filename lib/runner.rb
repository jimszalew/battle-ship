require './lib/messages_module'
require './lib/computer'
require './lib/grid'
require './lib/player'
require './lib/ship'

class Runner
  include Messages

  def initialize

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
      start_game
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

  def start_game
    @start_time = Time.now
    start_players
  end

  def start_players
    @computer = Computer.new
    startup_message
    @player = Player.new
  end

  # shot sequences
  ## display board states and shot/miss/hit counts
  # end game check


end
