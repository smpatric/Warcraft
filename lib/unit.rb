class Unit
  attr_accessor :attack_power, :health_points

  def initialize(health_points, attack_power)
    @health_points = health_points
    @attack_power = attack_power
  end

  def dead?
    health_points <= 0
  end


  def attack!(enemy)
    if enemy.dead?
      puts "Your enemy is already dead"
      return false
    else
      enemy.damage(self.attack_power)
    end
  end

  def damage(amount)
    self.health_points -= amount
  end
end