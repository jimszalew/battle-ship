class Ship

  attr_reader :name, :size

  def initialize(name)
    @name = name
    @size = sizes[name]
  end

  def sizes
    { "Patrol_Boat" => 2,
      "Submarine"   => 3,
    }
  end
end
