require 'spec_helper'

describe Knight do
  let(:example_input) { 'g2' }
  let(:example_output) { 'e1 e3 f4 h4' }
  let(:knight) { described_class.new(example_input) }
  it { expect(knight.moves).to eq(example_output) }
end
