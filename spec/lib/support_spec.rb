describe Support do
  describe "coordinate_to_position" do
    it { expect(described_class.coordinate_to_position([2, 5])).to eq('b5') }
    it { expect(described_class.coordinate_to_position([1, 1])).to eq('a1') }
  end

  describe "position_to_coordinate" do
    it { expect(described_class.position_to_coordinate('b5')).to eq([2, 5]) }
    it { expect(described_class.position_to_coordinate('a1')).to eq([1, 1]) }
  end

  describe "is_in_board?" do
    it { expect(described_class.is_in_board?([0, 0])).to be false }
    it { expect(described_class.is_in_board?([4, 4])).to be true }
    it { expect(described_class.is_in_board?([8, 9])).to be false }
  end
end