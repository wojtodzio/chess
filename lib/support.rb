module Support
  LETTER_TO_NUMBER = " abcdefgh"

  def self.coordinate_to_position(coordinate)
    LETTER_TO_NUMBER[coordinate.first] + coordinate.last.to_s
  end

  def self.position_to_coordinate(position)
    [LETTER_TO_NUMBER.index(position[0]), position[1].to_i]
  end

  def self.is_in_board?(coordinate)
    coordinate.first.between?(1, 8) && coordinate.last.between?(1, 8)
  end

  def self.bishop_vectors
    ((7..-1).to_a + (1..7).to_a).map do |number|
      [[number, number], [number, -number]]
    end.flatten(1).sort
  end

  def self.rook_vectors
    ((7..-1).to_a + (1..7).to_a).map do |number|
      [[number, 0], [0, number]]
    end.flatten(1).sort
  end
end