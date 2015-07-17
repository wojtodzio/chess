class Rook < Figure
  private

  def self.vectors
    Support.rook_vectors
  end
end