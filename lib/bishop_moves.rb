module BishopMoves
  VECTORS = ((7..-1).to_a + (1..7).to_a).map do |number|
    [[number, number], [number, -number]]
  end.flatten(1).sort
end