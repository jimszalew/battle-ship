require './lib/messages_module'

class Runner
  include Messages

  def start
    welcome
    request_input
  end

  def selection(input)
    if play?(input)
      ship_placement
    elsif instructions?(input)
      read_instructions
      request_input
    elsif quit?(input)
      quits
    else
      invalid_input
      request_input
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

  def request_input
    request_input_message
    input = gets.chomp
    selection(input)
  end


end
