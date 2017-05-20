require './lib/runner'

class Battleship
  def initialize
    @game = Runner.new.start
  end
end

Battleship.new
