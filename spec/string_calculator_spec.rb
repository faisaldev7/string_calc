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

    it "returns the sum of two numbers" do
      expect(@calculator.add("1,2")).to eq(3)
    end
    
    it "returns the sum of multiple numbers" do
      expect(@calculator.add("1,2,3")).to eq(6)
    end
  end
end
