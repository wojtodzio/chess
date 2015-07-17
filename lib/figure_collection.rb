class FigureCollection
  attr_reader :positions_lines, :figure_class

  def initialize(figure_class, positions_lines)
    @figure_class = figure_class
    @positions_lines = positions_lines
  end

  def moves
    compute_moves.join("\n")
  end

  private

  def compute_moves
    positions.map do |position|
      figure_class.new(position).moves
    end
  end

  def positions
    positions_lines.split("\n")
  end

end
