class Knight
  attr_reader :position

  def initialize(position)
    @position = position
  end

  def moves
    #should return all possible positions sorted
    #convert coordinates to position
    #compute all possible positions(add vectors to position)
    # *define all transformation vectors
    # *generate coordinates from position

  end

  private

  def possible_position
    possible_cooridnate.map do |coordinate|
      coordinate_to_position(coordinate)
    end
  end

  module Support
    LETTER_TO_NUMBER = " abcdefgh"

    def self.coordinate_to_position(coordinate)
      LETTER_TO_NUMBER[coordinate.first] + coordinate.last.to_s
    end
  end

end