module RookMoves
  VECTORS = ((7..-1).to_a + (1..7).to_a).map do |number|
    [[number, 0], [0, number]]
  end.flatten(1).sort
end