class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def gym_memberships
    Membership.all.select {|mem| mem.gym == self}
  end 

  def gym_lifters
    gym_memberships.map {|mem| mem.lifter}
  end

  def gym_lifters_names
    gym_lifters.map {|l| l.name}
  end

  def membership_totals
    (gym_memberships.map {|l| l.lifter.lift_total}).sum
  end

end
