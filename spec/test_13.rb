require_relative 'spec_helper'

# All units can attack and receive damage, so that logic should actually be on the Unit class, not the Peasant class
# This way, you don't have to add damage and attack methods on all types of units

# After making the tests pass, consider what modifications you can make to the Peasant and Footman classes to take advantage of this inheritence

describe Unit do

  before :each do
    @unit = Unit.new(80,0)
    @footman = Footman.new
    @peasant = Peasant.new
    @attacker = Footman.new
    @defender = Footman.new
  end

  describe "#damage" do
    it "Unit should not be able to attack while dead" do
      @unit.damage(@unit.health_points + 1)
      @unit.attack!(@defender)
      expect(@unit.attack!(@defender)).to eq(nil)

    end
  end
  describe "#damage" do
    it "Unit should not be able to attack another unit that is dead" do
      @defender.damage(@defender.health_points + 1)
      @attacker.attack!(@defender)
      expect(@attacker.attack!(@defender)).to eq(nil)

    end
  end

end

