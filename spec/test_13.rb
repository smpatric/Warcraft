require_relative 'spec_helper'

describe Unit do 

  before :each do
    @unit = Unit.new(50, 5)
  end

  describe "#dead? #attack" do
    it "should not allow #attack if enemy is #dead (true)" do
      enemy = Unit.new(0, 5)
      expect{@unit.attack!(enemy)}.to raise_error
    end

    it "should not allow #attack if unit is #dead (true)" do
      enemy = Unit.new(50, 5)
      @unit.should_receive(:health_points).and_return(0)
      expect{@unit.attack!(enemy)}.to raise_error
    end
  end
end