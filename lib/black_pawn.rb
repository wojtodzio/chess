class BlackPawn < Pawn

  private

  def starting_position?
    coordinate.last == 7
  end

  def self.vector_one_up
    [0, -1]
  end

  def self.vector_two_up
    [[0, -2], vector_one_up]
  end
end
