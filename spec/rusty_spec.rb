require 'spec_helper'

describe Calculator do
  subject(:calculator) { described_class.new }
  subject(:calculator_two) { described_class.new }

  describe "#answer" do
    it "returns postfix from infix" do
      expect(calculator.answer("2+3*2")).to eq("232*+")
    end

    it "returns postfix from infix test 2" do
      expect(calculator_two.answer("2*4*3+9*3+5")).to eq("243**93*5++")
    end
  end
end
