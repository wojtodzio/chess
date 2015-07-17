require 'spec_helper'
require 'figure_collection'

describe FigureCollection do
  context "pawn" do
    let(:example_input) {
      %Q{g2\na1\nd6\ne5\nb1} }
    let(:example_output) {
      %Q{g3 g4\na2\nd7\ne6\nb2}
    }
    let(:pawn) { FigureCollection.new(Pawn, example_input) }
    it { expect(pawn.moves).to eq(example_output) }
  end

  context "knight" do
    let(:example_input) {
      %Q{g2\na1\nd6\ne5\nb1} }
    let(:example_output) {
      %Q{e1 e3 f4 h4\nb3 c2\nb5 b7 c4 c8 e4 e8 f5 f7\nc4 c6 d3 d7 f3 f7 g4 g6\na3 c3 d2}
    }
    let(:knight) { FigureCollection.new(Knight, example_input) }
    it { expect(knight.moves).to eq(example_output) }
  end
end
