require 'spec_helper'
require 'pawn'
require 'support'

describe Pawn do
  context 'on starting position' do
    let(:example_input) { 'g2' }
    let(:example_output) { 'g3 g4' }
    let(:pawn) { described_class.new(example_input) }
    it { expect(pawn.moves).to eq(example_output) }
  end

  context 'already moved' do
    let(:example_input) { 'g3' }
    let(:example_output) { 'g4' }
    let(:pawn) { described_class.new(example_input) }
    it { expect(pawn.moves).to eq(example_output) }
  end
end