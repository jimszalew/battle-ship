require './lib/ship'

class Grid

  attr_reader :grid,
              :ships

  def initialize
    @ships = [Ship.new(2), Ship.new(3)]
    @grid = Array.new(4) {Array.new(4, " ")}
  end

  def columns
    (1..4).to_a
  end

  def rows
    ("A".."D").to_a
  end

  def print_grid
    puts "===" * 4
    print_numbers
    print_letters
    puts "===" * 4
  end

  def print_numbers
    puts "* " + columns.join("  ")
  end

  def print_letters
    grid.each_with_index do |row, idx|
      puts rows[idx] + " " + row.join("  ")
    end
  end
end
