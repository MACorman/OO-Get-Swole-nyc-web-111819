class Membership
  attr_reader :cost, :lifter, :gym

  @@all = []

  def initialize(lifter, gym, cost)
    @lifter = lifter
    @gym = gym
    @cost = cost
    @@all << self
  end

  def self.all
    @@all
  end 

  def new_membership(lifter, gym, cost)
    Membership.new(lifter, gym, self)
  end 

end
