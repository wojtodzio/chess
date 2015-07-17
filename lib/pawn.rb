class Pawn < Figure

  private

  def vectors
    starting_position? ? self.class.vector_two_up : [self.class.vector_one_up]
  end

  def starting_position?
    coordinate.last == 2
  end

  def self.vector_one_up
    [0, 1]
  end

  def self.vector_two_up
    [vector_one_up, [0, 2]]
  end
end
