class Ship

  attr_reader :name, :size
  attr_accessor :status, :coordinates

  def initialize(name)
    @name = name
    @size = boats[name]
    @coordinates = []
    @status = "afloat"
  end

  def boats
    { "Patrol_Boat" => 2,
      "Submarine"   => 3,
    }
  end
end
