class Figure
  include Support
  attr_reader :position

  def initialize(position)
    @position = position
  end

  def moves
    possible_position.join(' ')
  end

  private

  def coordinate
    @coordinate ||= Support.position_to_coordinate(position)
  end

  def possible_coordinate
    all_coordinates.select { |coordinate| Support.is_in_board?(coordinate) }
  end

  def all_coordinates
    vectors.map do |vector|
      [coordinate.first + vector.first, coordinate.last + vector.last]
    end
  end

  def possible_position
    possible_coordinate.map do |coordinate|
      Support.coordinate_to_position(coordinate)
    end
  end

  def vectors
    self.class.vectors
  end
end