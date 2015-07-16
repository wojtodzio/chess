require 'spec_helper'
require 'knight'

describe Knight, :focus do
  let(:example_input) { 'g2' }
  let(:example_output) { 'e1 e3 f4 h4' }
  let(:knight) { described_class.new(example_input) }
  it { expect(knight.moves).to eq(example_output) }
end

describe Knight::Support do
  describe "coordinate_to_position" do
    it { expect(described_class.coordinate_to_position([2, 5])).to eq('b5') }
    it { expect(described_class.coordinate_to_position([1, 1])).to eq('a1') }
  end

  describe "position_to_coordinate" do
    it { expect(described_class.position_to_coordinate('b5')).to eq([2, 5]) }
    it { expect(described_class.position_to_coordinate('a1')).to eq([1, 1]) }
  end
end