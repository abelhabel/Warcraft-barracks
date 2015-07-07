require_relative 'seige_engine'
require_relative 'building'

class WarFactory < Building

  attr_accessor :gold, :food, :health_points, :lumber

  def initialize
    @health_points = 500
    @gold = 1000
    @food = 80
    @lumber = 500
    @seige_engine_gold_cost = 200
    @seige_engine_food_cost = 3
    @seige_engine_lumber_cost = 60
  end
  
  def can_train_seige_engine?
    return true if (self.gold >= @seige_engine_gold_cost && self.food >= @seige_engine_food_cost)
    false
  end

  def train_seige_engine
    return nil if !can_train_seige_engine?
    @gold -= @seige_engine_gold_cost
    @food -= @seige_engine_food_cost
    SeigeEngine.new
  end


end
