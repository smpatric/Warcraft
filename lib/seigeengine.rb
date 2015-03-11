class SeigeEngine
  attr_accessor :attack_power, :health_points

  def initialize
    @attack_power = 50
    @health_points = 400
  end

  def attack!(enemy)
    if enemy.kind_of? Unit
      raise "You cannot attack this unit!"
    elsif enemy.kind_of? Barracks
      enemy.damage(attack_power * 2)
    else
      enemy.damage(attack_power)
    end
  end

  def damage(amount)
    health_points -= amount
  end

end