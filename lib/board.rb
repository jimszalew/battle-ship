require './lib/cell'

class Board

  attr_reader :cells

  def initialize
    @cells = {}
  end

  def make_cells
    row = ['A','B','C','D']
    column = ['1','2','3','4']
      row.map do |letter|
        column.map do |number|
          cell = Cell.new("#{letter}#{number}")
          cells.store(cell.name, cell.coordinates.values)
        end
      end
  end
end
