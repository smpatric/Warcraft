require_relative 'spec_helper'

describe Unit do 

  before :each do
    @unit = Unit.new(50, 5)
  end

  describe "#dead? #attack" do
    it "should not allow #attack if enemy #dead is true" do
      enemy = Unit.new(0, 5)
      expect(@unit.attack!(enemy)).to be_falsey
    end

    it "should not allow #attack if unit #dead is true" do
      enemy = Unit.new(50, 5)
      @unit.should_receive(:health_points).with(0)
      expect(@unit.attack!(enemy)).to be_falsey
    end
  end
end