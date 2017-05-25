module Messages

  def welcome
    puts "Welcome to BATTLESHIP\n\n"
  end

  def request_input_message
    puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?\n> "
  end

  def read_instructions
    puts File.read("./lib/instructions.txt") + "\n"
  end

  def quits
    puts "That's cool, maybe later?"
  end

  def invalid_input
    puts "Please enter a valid choice p, i, or q."
  end

  def startup_message
    puts "I have laid out my ships on the grid. You now need to layout your two ships. The first is two units long and the second is three units long. The grid has A1 at the top left and D4 at the bottom right. Ships CAN NOT: wrap around the map, overlap each other, or be placed diagonally.\n\n"
  end

  def head_coordinate_message
    puts "Enter the first coordinate for your #{ship.size} unit ship."
  end

  def tail_coordinate_message
    puts "Enter the tail coordinate for your #{ship.size} unit ship."
  end

  def placement_error
    puts "Invalid coordinates, please re-enter coordinates"
  end

  def invalid_tail_message
    puts "Invalid tail position."
  end

  def abcd
    ("A".."D").to_a
  end

  def ship_wrap_message
    puts "Ships can not wrap around the board."
  end
end
