


class OrangeTree

  MAX_AGE = 25
  attr_reader :age, :height, :oranges

  def initialize
    @oranges = []
    @age = 0
    @height = 0
  end

  def any_oranges?
    @oranges.size > 0
  end

  def age!
    @age += 1
    @height += 1.5
    @oranges << Orange.new
  end

  def dead?
    @age > MAX_AGE
  end

  def pick_an_orange!
    @oranges.pop
  end

  def print_orange_diameters
    puts "printing out orange diameters:"
    @oranges.each { |orange| puts orange.diameter }
  end

  def enlarge_oranges
    @oranges.each { |orange| orange.diameter += 1}
  end

  def ginormize_oranges
    @oranges.each { |orange| orange.diameter **= 2}
  end

end

class Orange
  attr_accessor :diameter

  def initialize
    @diameter = [3,4,5,6].sample
  end

end


o_tree = OrangeTree.new
o_tree.age!
o_tree.age!
puts o_tree.age == 2
puts o_tree.height == 3
print "Printing trees oranges: ";  p o_tree.oranges

# can we print out each of the orange diameters?
o_tree.print_orange_diameters

# can we enlarge each of the oranges on the tree?
o_tree.enlarge_oranges
o_tree.print_orange_diameters

# can we ginormize our oranges (square their diameter?)
o_tree.ginormize_oranges {|orange| orange.diameter**2 }
o_tree.print_orange_diameters


