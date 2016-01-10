# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent 2 hours on this challenge.

# 0. Pseudocode

# Input: Call class method die.new with random postive integer

# Output: return a random integer
# Steps:
=begin
1. assign instance variable for initialize argument
2. raise argument error IF argument is less than 1
3. RETURN instance variable in sides method
4. RETURN and use method to determind random number between 1 and instance variable
=end



# 1. Initial Solution
=begin
class Die
  def initialize(sides)
    @sides = sides
    if @sides < 1
      raise ArgumentError.new("Test Text")
  end

  def sides
    return @sides
  end

  def roll
    return rand(1..@sides)
  end
end


die = Die.new(5) #This creates a new die object with 6 sides
die.sides # returns 6
die.roll # returns a random number between 1 and 6
end

=end
# 3. Refactored Solution
class Die
  def initialize(sides)
    @sides = sides
    if @sides < 1
      raise ArgumentError.new("Only numbers above one are allowed")
  end

  def sides
    @sides
  end

  def roll
    rand(1..@sides)
  end
end


die = Die.new(5) #This creates a new die object with 6 sides
die.sides # returns 6
die.roll # returns a random number between 1 and 6
end



# 4. Reflection
=begin

What is an ArgumentError and why would you use one?
It’s an error initizalied by the coder to let the use know it’s not going to work instead of Ruby saying there is a system error. You would use one, when you know you’re user could accidently input the wrong information and you want a custom message describing the error instead of Ruby syntax popping up.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them? The only new method I used were the .new method when creating a new object to run through a class of methods. I did not have any successors or challenges worth writing about.

What is a Ruby class? As said in the Well Grounded Rubyist, “a [Ruby] class consist consists chiefly of a collection of method definitions.”

Why would you use a Ruby class? If you want to produce multiple outputs that have different, but similar outputs. A good example would be making a class to make dozens of chair sizes and colors. Each chair would have its unique leg sizes, stain, and wood, but they would would still all be chairs.

What is the difference between a local variable and an instance variable? A local variable is only available to the method it’s called in, while an instance variable is available to other methods and inside an entire class.

Where can an instance variable be used? An instance variable is available to other methods and inside an entire class.

=end
