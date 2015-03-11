require_relative 'spec_helper'

describe SeigeEngine do
  
  before :each do
    @seigeengine = SeigeEngine.new
  end

  it "has and knows it has HP" do
    expect(@seigeengine.health_points).to eq(400)
  end

  it "has and knows it has AP" do
    expect(@seigeengine.attack_power).to eq(50)
  end

  describe "#attack" do
    it "should not be able to attack Unit" do
      footman = Footman.new
      expect{@seigeengine.attack!(footman)}.to raise_error
    end
    
    it "should deal double damage to building" do
      barracks = Barracks.new
      @seigeengine.attack!(barracks)
      expect(barracks.health_points).to eq(400)
    end
  end
end