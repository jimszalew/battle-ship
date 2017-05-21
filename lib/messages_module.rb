module Messages

  def welcome
    puts "Welcome to BATTLESHIP\n"
  end

  def request_input_message
    puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end

  def read_instructions
    puts File.read("./lib/instructions.txt") + "\n"
  end

  def quits
    puts "Few are cut out for the life of a navy gunner."
  end

  def invalid_input
    puts "Please enter a valid choice p, i, or q."
  end

  def startup_message
    puts "I have laid out my ships on the grid. You now need to layout your two ships. The first is two units long and the second is three units long. The grid has A1 at the top left and D4 at the bottom right. Ships CAN NOT: wrap around the map, overlap each other, or be placed diagonally.\n\n"
  end

  def two_unit_placement_message
    puts "Enter the squares for the two-unit ship."
  end

  def three_unit_placement_message
    puts "Enter the squares for the three-unit ship."
  end
end
