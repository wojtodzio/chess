require 'spec_helper'

describe Rook do
  let(:example_input) { 'a1' }
  let(:example_output) { 'a2 a3 a4 a5 a6 a7 a8 b1 c1 d1 e1 f1 g1 h1' }
  let(:rook) { described_class.new(example_input) }
  it { expect(rook.moves).to eq(example_output) }
end
