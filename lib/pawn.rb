require 'figure'

class Pawn < Figure
  VECTORS = [[0, 1], [0, 2]]

  def moves
    #todo: do it properly
    starting_position? ? super : super[0..1]
  end

  private

  def starting_position?
    coordinate.last == 2
  end
end
