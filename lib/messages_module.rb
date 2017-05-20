module Messages

  def welcome
    puts "Welcome to BATTLESHIP\n"
  end

  def request_input_message
    puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end

  def read_instructions
    puts File.read("./lib/instructions.txt")
  end

  def quits
    puts "Few are cut out for the life of a navy gunner."
  end

  def invalid_input
    "Please enter a valid choice p, i, or q."
  end
end
