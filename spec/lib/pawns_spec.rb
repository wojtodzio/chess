require 'spec_helper'
require 'pawns'

describe Pawns do
  let(:example_input) {
    %Q{g2\na1\nd6\ne5\nb1} }
  let(:example_output) {
    %Q{g3\na2\nd7\ne6\nb2}
  }
  let(:pawn) { Pawns.new(example_input) }
  it { expect(pawn.moves).to eq(example_output) }
end
