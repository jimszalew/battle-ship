class Ship

  attr_reader :size,
              :coordinates

  def initialize(size)
    @size = size
    @coordinates = []
  end
end
