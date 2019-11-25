# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

l1 = Lifter.new("Maddy", 400)
l2 = Lifter.new("Jessie", 390)
l3 = Lifter.new("Joe", 630)
l4 = Lifter.new("Kramesy", 555)
l5 = Lifter.new("Elisa", 375)
l6 = Lifter.new("Jean", 700)

g1 = Gym.new("S&S Barbell")
g2 = Gym.new("Murder of Crows")
g3 = Gym.new("JDI")
 
mem1 = Membership.new(l6, g2, 250)
mem2 = Membership.new(l6, g1, 130)
mem3 = Membership.new(l6, g3, 220)
mem4 = Membership.new(l1, g1, 220)
mem5 = Membership.new(l3, g1, 100)
mem6 = Membership.new(l2, g1, 220)
mem7 = Membership.new(l4, g1, 220)
mem8 = Membership.new(l4, g2, 250)



binding.pry

puts "Gains!"
