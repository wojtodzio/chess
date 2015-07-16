class Knights
  attr_reader :positions_lines

  def initialize(positions_lines)
    @positions_lines = positions_lines
  end

  def moves
    positions.map do |position|
      Knight.new(position).moves
    end
  end

  private

  def positions
    positions_lines.split('\n')
  end

end
