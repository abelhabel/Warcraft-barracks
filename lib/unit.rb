class Unit

  attr_accessor :health_points, :attack_power

  def initialize(health_points, attack_power)
    @health_points = health_points
    @attack_power = attack_power
  end

  def dead?
    self.health_points <= 0
  end

  def attack!(enemy)
    #calculate damage multiplier based on who is attacking who
    multiplier = 1
    if (enemy.class < Building)
      if (self.class < SeigeEngine || self.class == SeigeEngine)
        multiplier = 2
      else
        multiplier = 0.5
      end
    elsif (enemy.class < SeigeEngine || enemy.class == SeigeEngine)
      if (self.class < SeigeEngine || self.class == SeigeEngine)
        multiplier = 1
      end
    else
      if(self.class < SeigeEngine || self.class == SeigeEngine)
        multiplier = 0
      end
    end
    enemy.damage(self.attack_power * multiplier) if !dead?
  end

  def damage(amount) #should be called damage_taken or take_damage
    self.health_points -= amount if !dead?
  end

end