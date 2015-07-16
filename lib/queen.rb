require 'figure'
require 'bishop_moves.rb'
require 'rook_moves.rb'

class Queen < Figure
  VECTORS = (RookMoves::VECTORS + BishopMoves::VECTORS).sort
end
