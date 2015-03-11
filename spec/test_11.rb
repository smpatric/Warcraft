require_relative 'spec_helper'

describe Barracks do 

  before :each do
    @barracks = Barracks.new
  end

  it "has health points" do
    expect(@barracks.health_points).to eq(500) 
  end

  describe "#damage" do 
    it "reduces health_points by half of enemy attack_power" do
      enemy = Footman.new
      enemy.attack!(@barracks)
      expect(@barracks.health_points).to eq(495)
    end
  end
end