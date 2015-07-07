require_relative 'footman'
require_relative 'peasant'

class Barracks

  attr_reader :gold, :food

  def initialize
    @gold = 1000
    @food = 80
    @footman_gold_cost = 135
    @footman_food_cost = 2
    @peasant_gold_cost = 90
    @peasant_food_cost = 5
  end

  def can_train_footman?
    return true if (self.gold >= @footman_gold_cost && self.food >= @footman_food_cost)
    false
  end

  def can_train_peasant?
    return true if (self.gold >= @peasant_gold_cost && self.food >= @peasant_food_cost)
    false
  end

  def train_footman
    return nil if !can_train_footman?
    @gold -= @footman_gold_cost
    @food -= @footman_food_cost
    Footman.new
  end

  def train_peasant
    return nil if !can_train_peasant?
    @gold -= @peasant_gold_cost
    @food -= @peasant_food_cost
    Peasant.new
  end

end
