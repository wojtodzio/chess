require 'figure'

class Pawn < Figure
  private

  def vectors
    starting_position? ? self.class.vectors : self.class.vectors[0..0]
  end

  def starting_position?
    coordinate.last == 2
  end

  def self.vectors
    [[0, 1], [0, 2]]
  end
end
