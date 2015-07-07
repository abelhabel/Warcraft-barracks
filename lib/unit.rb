class Unit

  attr_accessor :health_points, :attack_power

  def initialize(health_points, attack_power)
    @health_points = health_points
    @attack_power = attack_power
  end

  def attack!(enemy)
    enemy.damage(self.attack_power)
  end

  def damage(amount) #should be called damage_taken or take_damage
    self.health_points -= amount
  end

end