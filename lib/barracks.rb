class Barracks
  attr_accessor :gold, :food, :health_points, :lumber
  def initialize
    @gold = 1000
    @food = 80
    @health_points = 500
    @lumber = 500
  end

  def can_train_footman?
    true unless food < 2 || gold < 135
  end

  def can_train_peasant?
    true unless food < 5 || gold < 90
  end

  def can_train_seigeengine?
    true unless food < 3 || gold < 200 || lumber < 60
  end

  def train_footman 
    if can_train_footman?
      @gold -= 135
      @food -= 2
      Footman.new
    else
      return nil
    end
  end

  def train_peasant
    if can_train_peasant?
      @gold -= 90
      @food -= 5
      Peasant.new
    else
      return nil
    end
  end

  def train_seigeengine
    if can_train_seigeengine?
      @gold -= 200
      @food -= 3
      @lumber -= 60
    else
      return nil
    end
  end

  def damage(amount)
    @health_points -= amount
  end
end
