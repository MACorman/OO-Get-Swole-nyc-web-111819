class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end
  
  def my_memberships
    Membership.all.select {|mem| mem.lifter == self }
  end 

  def my_gyms
    my_memberships.map { |mem| mem.gym}
  end

  def self.ave_total
    new_array = @@all.map {|l| l.lift_total}
    new_array.sum / new_array.length
  end

  def total_membership_cost
    (my_memberships.map { |mem| mem.cost }).sum
  end 

  def sign_me_up(gym, cost)
    Membership.new(self, gym, cost)
  end

end
