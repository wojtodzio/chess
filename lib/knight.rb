class Knight
  attr_reader :position

  VECTORS = [[-2, -1], [-2, 1], [-1, -2], [-1, 2], [1, -2], [1, 2], [2, -1], [2, 1]]

  def initialize(position)
    @position = position
  end

  def moves
    #should return all possible positions sorted
    #convert coordinates to position
    possible_position

  end

  private

  def possible_coordinate
    #compute all possible positions(add vectors to position)
    # *define all transformation vectors
    # *generate coordinates from position
  end

  def possible_position
    possible_coordinate.map do |coordinate|
      coordinate_to_position(coordinate)
    end
  end

  module Support
    LETTER_TO_NUMBER = " abcdefgh"

    def self.coordinate_to_position(coordinate)
      LETTER_TO_NUMBER[coordinate.first] + coordinate.last.to_s
    end

    def self.position_to_coordinate(position)
      [LETTER_TO_NUMBER.index(position[0]), position[1].to_i]
    end
  end

end