class Ship

  attr_reader :name, :size
  attr_accessor :coordinates

  def initialize(name)
    @name = name
    @size = boats[name]
    @coordinates = []
    @hits = 0
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

  def sunk?
    @hits >= @size
  end
end
