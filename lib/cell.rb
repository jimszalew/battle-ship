class Cell

  attr_reader :coordinates,
              :input

  def initialize(input)
    @input = input
    @coordinates = {}
  end

  def assign(input)
    row = input.split(//)[0]
    column = input.split(//)[1]
    coordinates.store(input, [row, column])
  end
end
