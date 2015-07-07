require_relative 'spec_helper'

# All units can attack and receive damage, so that logic should actually be on the Unit class, not the Peasant class
# This way, you don't have to add damage and attack methods on all types of units

# After making the tests pass, consider what modifications you can make to the Peasant and Footman classes to take advantage of this inheritence

describe SeigeEngine do

  before :each do
    @unit = Unit.new(80,0)
    @barrack = Barracks.new
    @seige_engine = SeigeEngine.new
  end

  describe "#damage" do
    it "Barrack should take double damage from Seige Engines" do
      expect(@seige_engine.attack!(@barrack)).to eq(400)

    end
  end
  describe "#damage" do
    it "Seige engine should be able to attack another seige engine at normal damage" do
      @defender = SeigeEngine.new
      @attacker = SeigeEngine.new
      expect(@attacker.attack!(@defender)).to eq(350)

    end
  end
  describe "#damage" do
    it "Seige engine should Not be able to attack(do no damage) a unit that is not seige engine" do
      @defender = Footman.new
      @attacker = SeigeEngine.new
      @full_health = @defender.health_points
      expect(@attacker.attack!(@defender)).to eq(@full_health)

    end
  end

end

