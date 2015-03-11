require_relative 'spec_helper'

describe Unit do
  
  before :each do
    @unit = Unit.new(50, 5)
  end

  describe "#dead?" do
    it "returns false if there are enough health_points" do
      expect(@unit.dead?).to be_falsey
    end

    it "returns true if there aren't enough health_points" do
      @unit.should_receive(:health_points).and_return(0)
      expect(@unit.dead?).to be_truthy
    end
  end
end