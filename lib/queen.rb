require 'figure'

class Queen < Figure
  private

  def self.vectors
    (Support.bishop_vectors + Support.rook_vectors).sort
  end


end
