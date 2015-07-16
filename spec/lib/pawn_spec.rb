require 'spec_helper'
require 'pawn'
require 'support'

describe Pawn do
  let(:example_input) { 'g2' }
  let(:example_output) { 'g3' }
  let(:pawn) { described_class.new(example_input) }
  it { expect(pawn.moves).to eq(example_output) }
end