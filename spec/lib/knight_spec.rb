require 'spec_helper'
require 'knight'

describe Knight do
  let(:example_input) {
    %Q{g2\na1\nd6\ne5\nb1}}
  let(:example_output) {
    %Q{e1 e3 f4 h4\nb3 c2\nb5 b7 c4 c8 e4 e8 f5 f7\nc4 c6 d3 d7 f3 f7 g4 g6\na3 c3 d2}
  }
  let(:knight) {Knight.new(example_input)}
  it {expect(knight.moves).to eq(example_output)}
end
