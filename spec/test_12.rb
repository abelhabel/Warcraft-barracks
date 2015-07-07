require_relative 'spec_helper'

# All units can attack and receive damage, so that logic should actually be on the Unit class, not the Peasant class
# This way, you don't have to add damage and attack methods on all types of units

# After making the tests pass, consider what modifications you can make to the Peasant and Footman classes to take advantage of this inheritence

describe Unit do

  before :each do
    @unit = Unit.new(80,0)
    @footman = Footman.new
    @peasant = Peasant.new
  end

  describe "#damage" do
    it "Should declare the unit dead" do
      @unit.damage(@unit.health_points + 1)
      expect(@unit.dead?).to eq(true)

    end
  end
  describe "#damage" do
    it "Should declare the footman dead" do
      @footman.damage(@footman.health_points + 1)

      expect(@footman.dead?).to eq(true)
    end
  end
  describe "#damage" do
    it "Should declare the peasant dead" do
      @peasant.damage(@peasant.health_points + 1)

      expect(@peasant.dead?).to eq(true)
    end
  end

end

