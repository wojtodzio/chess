require 'spec_helper'

describe BlackPawn do
  context 'on starting position' do
    let(:example_input) { 'g7' }
    let(:example_output) { 'g5 g6' }
    let(:black_pawn) { described_class.new(example_input) }
    it { expect(black_pawn.moves).to eq(example_output) }
  end

  context 'already moved' do
    let(:example_input) { 'g3' }
    let(:example_output) { 'g2' }
    let(:black_pawn) { described_class.new(example_input) }
    it { expect(black_pawn.moves).to eq(example_output) }
  end
end