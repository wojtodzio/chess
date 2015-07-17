require 'spec_helper'

describe FigureCollection do
  context "pawn" do
    let(:figure_double) { instance_double("Pawn", moves: 'text') }
    let!(:figure_class_double) { class_double("Pawn", new: figure_double).as_stubbed_const(:transfer_nested_constants => true) }

    let(:example_input) { "_\n_\n" }
    let(:example_output) { "text\ntext" }

    let(:pawn) { FigureCollection.new(Pawn, example_input) }
    it { expect(pawn.moves).to eq(example_output) }
  end
end
