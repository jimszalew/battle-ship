class Ship

  attr_reader :name, :size
  attr_accessor :coordinates

  def initialize(name, afloat = true)
    @name = name
    @size = boats[name]
    @coordinates = []
  end

  def <<(cell)
    coordinates << cell
  end

  def boats
    {
    "Patrol_Boat" => 2,
    "Submarine"   => 3,
    }
  end

  def reset
    @coordinates = []
  end
end
