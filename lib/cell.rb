class Cell

  attr_reader :coordinates,
              :name

  def initialize(name)
    @name = name
    @coordinates = {}
    assign(name)
  end

  def assign(name)
    row = name.split(//)[0]
    column = name.split(//)[1]
    coordinates.store(name, [row, column])
  end
end
