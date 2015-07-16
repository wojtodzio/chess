require 'spec_helper'
require 'bishop'
require 'support'

describe Bishop do
  let(:example_input) { 'a1' }
  let(:example_output) { 'b2 c3 d4 e5 f6 g7 h8' }
  let(:bishop) { described_class.new(example_input) }
  it { expect(bishop.moves).to eq(example_output) }
end
