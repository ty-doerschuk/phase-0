# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: an array of random strings
# Output: returning a random value in the input array
# Steps:
=begin
DEFINE initialize with one parameter as 'labels'
  IF 'labels' totals values are not greater than 1
  RETURN argument error
  DEFINE sides method
    return array, perhaps print strings to console of what random value could come up
  DEFINE roll
    select random index value of array and print it to the console

=end

# Initial Solution
=begin
class Die
  def initialize(labels)
    @labels_new = labels
    if labels.count < 1
      raise ArgumentError.new("More than one label required")
    end
  end

  def sides
    @labels_new.count # .each do |each|
      # puts "Your result could be:"
      # puts each
  end

  def roll
    @labels_new.sample
  end
end

die = Die.new(['cat', 'dog', 'fish', 'bird'])
die.sides
die.roll
=end
# Refactored Solution
class Die
  def initialize(labels)
    @labels = labels
    if labels.count < 1
      raise ArgumentError.new("More than one label required")
    end
  end

  def sides
    @labels.count
  end

  def roll
    @labels.sample
  end
end

die = Die.new(['cat', 'dog', 'fish', 'bird'])
die.sides
die.roll

# Reflection
=begin
What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
The first die challenge didn’t involve using built-in methods to push values through the class, this one did. The logic was pretty much the same, but you needed to take into account what a built-in method was doing to your instance variable.

What does this exercise teach you about making code that is easily changeable or modifiable? Not to get carried away, if its clean and working, you don’t need to add mass changes.

What new methods did you learn when working on this challenge, if any? In my refactoring I looked for a better enumerable method to use but was unsuccessful, The method ‘.count’ and ‘.sample’ worked perfectly.

What concepts about classes were you able to solidify in this challenge? To be aware when you modify you assign a variable to an instance variable, it will be passed on to other methods. You have to be cognizant of that.
=end

