require 'spec_helper'

describe King do
  let(:example_input) { 'd4' }
  let(:example_output) { 'c3 c4 c5 d3 d5 e3 e4 e5' }
  let(:king) { described_class.new(example_input) }
  it { expect(king.moves).to eq(example_output) }
end
