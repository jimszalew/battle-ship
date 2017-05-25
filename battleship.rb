require './lib/game'

class Battleship
  def initialize
    Game.new.start
  end
end

Battleship.new
