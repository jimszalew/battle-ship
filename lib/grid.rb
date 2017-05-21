class Grid
 attr_reader :size,
             :value,
             :grid

 def initialize#(size = 4, value = " ")
   @size = size
   @value = value
   @grid = Array.new(4) { Array.new(4, " ") }
 end

 def columns(size)
   (1..size).to_a
 end

 def rows
   ("A".."D").to_a
 end

 def print_grid
   puts border.join
   print_numbers
   print_letters
   puts border.join
 end

 def border
   Array.new(size, "===")
 end

 def print_numbers
   puts "* " + columns(size).join("  ")
 end

 def print_letters
   grid.each_with_index do |row, idx|
     puts rows[idx] + " " + row.join("  ")
   end
 end
end
