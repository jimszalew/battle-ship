class Ship

  attr_reader :name, :size
  attr_accessor :status, :location

  def initialize(name)
    @name = name
    @size = boats[name]
  end

  def boats
    { "Patrol_Boat" => 2,
      "Submarine"   => 3,
    }
  end
end
