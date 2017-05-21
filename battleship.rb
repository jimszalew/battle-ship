require './lib/runner'

class Battleship
  def initialize
    Runner.new.start
  end
end

Battleship.new
