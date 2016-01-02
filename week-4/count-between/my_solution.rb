# Count Between

# I worked on this challenge [by myself, with: ].

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below
list_of_integers = [11,22,27,34]
lower_bound = 10
upper_bound = 30

def count_between(list_of_integers, lower_bound, upper_bound)
  list_of_integers.count do |x| x.between?(lower_bound, upper_bound)
  end
end