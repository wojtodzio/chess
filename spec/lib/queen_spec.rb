require 'spec_helper'

describe Queen do
  let(:example_input) { 'a1' }
  let(:example_output) { 'a2 a3 a4 a5 a6 a7 a8 b1 b2 c1 c3 d1 d4 e1 e5 f1 f6 g1 g7 h1 h8' }
  let(:queen) { described_class.new(example_input) }
  it { expect(queen.moves).to eq(example_output) }
end
