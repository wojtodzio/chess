class Pawns
  attr_reader :positions_lines

  def initialize(positions_lines)
    @positions_lines = positions_lines
  end

  def moves
    compute_moves.join("\n")
  end

  private

  def compute_moves
    positions.map do |position|
      Pawn.new(position).moves
    end
  end

  def positions
    positions_lines.split("\n")
  end

end
