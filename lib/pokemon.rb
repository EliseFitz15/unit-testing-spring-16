class Pokemon
  attr_reader :name, :poketype, :ability, :birthday, :hit_points
  attr_accessor :strength
  def initialize(name, poketype, ability, birthday, hit_points = 50)
    @name = name
    @poketype = poketype
    @ability = ability
    @birthday = birthday
    @hit_points = hit_points
    @strength = 0
  end

  def train
    @strength += Dice.new(20).roll
  end

  def attack!(target)
    target.hit_points - strength / 2
  end

  def ready_to_evolve?
    Date.today - 365 >= birthday
  end

end
