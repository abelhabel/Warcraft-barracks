require_relative 'spec_helper'

# All units can attack and receive damage, so that logic should actually be on the Unit class, not the Peasant class
# This way, you don't have to add damage and attack methods on all types of units

# After making the tests pass, consider what modifications you can make to the Peasant and Footman classes to take advantage of this inheritence

describe Barracks do

  before :each do
    @barrack = Barracks.new  
  end

  describe "#lumber" do
    it "should return 500 when asked for amount of lumber" do

      expect(@barrack.lumber).to eq(500)
    end
  end

  describe "#lumber" do
    it "should return 400 when lumber is reduced by 100" do
      expect(@barrack.lumber -= 100).to eq(400)
    end
  end

end

