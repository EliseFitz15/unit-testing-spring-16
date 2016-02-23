require "spec_helper"

RSpec.describe Dice do

  describe ".new" do
    it "should have sides" do
      dice = Dice.new(6)
      expect(dice.sides).to eq 6
    end
  end

  describe "#roll" do
    let(:dice) { Dice.new(6) }
    it "should generate a random number based on sides" do
      expect((1..dice.sides).to_a).to include(dice.roll)
    end

    it "should not return value outside sides values" do
      expect((1..dice.sides).to_a).to_not include(9)
    end
  end

end
