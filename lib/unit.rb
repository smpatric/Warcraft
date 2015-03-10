class Unit
  attr_accessor :attack_power, :health_points

  def initialize(health_points, attack_power)
    @health_points = health_points
    @attack_power = attack_power
  end

  def attack!(enemy)
    enemy.damage(self.attack_power)
  end

  def damage(amount)
    self.health_points -= amount
  end
end