require 'string_calculator'

RSpec.describe StringCalculator do
  before(:each) do
    @calculator = StringCalculator.new
  end

  describe "add" do
    it "returns 0 for an empty string" do
      expect(@calculator.add("")).to eq(0)
    end

    it "returns the number when a single number is provided" do
      expect(@calculator.add("1")).to eq(1)
    end
  end
end
