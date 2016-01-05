# Pad an Array

# I worked on this challenge with Jonathan Silvestri

# 0. Pseudocode

# Input: array with non-negitive values, min_size of an array, and optional argument for additional pad values
# Output: return array if it meets prior requirements or new array with new arguments
# Steps to solve:
# define method
# make a copy of the original array <--don't make a copy for destructive
# check to see if array is smaller than original, array < min_size argument
# if true
# add value UNTIL array = min_size
# RETURN array
# END
# ELSE
# return array
# call method


# 1. Initial Solution
# destructive
#def pad!(array, min_size, value = nil)
#  if array.length < min_size
#   array.push(value) until array.length == min_size.to_i
# end
# array
#end

# non destructive
#def pad(array, min_size, value = nil)
#  new_array = []
#  array.each do |val|
#    new_array << val
#  end
#  if new_array.length < min_size
#    new_array.push(value) until new_array.length == min_size
#  end
#  new_array
#end

# 3. Refactored Solution

# destructive
def pad!(array, min_size, value = nil)
  if
    array.length < min_size
    array.push(value) until array.length == min_size
  end
  array
end

# non destructive
def pad(array, min_size, value = nil)
  new_array = array.clone
  if new_array.length < min_size
    new_array.push(value) until new_array.length == min_size
  end
  new_array
end

=begin
Were you successful in breaking the problem down into small steps?
Somewhat, it got a little rough when solutions started to fail and we would just throw random solutions at the code.

Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
Yes and no. We immediately got a solution for the non destructive and we tried to emulate the same to the destructive by just adding a ! to the method. That didn’t work. After some laboring and asking Lucas for help in reaching an answer, my partner and I looked back and realized that we missed a key step in our puesdocode that would have saved us a bunch of time.

Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
The destructive was, the non-destructive was not. We failed to look for the code that actually destructs the array, that would have open the door to us figuring out a way to create a second array.

When you refactored, did you find any existing methods in Ruby to clean up your code?
Yes

How readable is your solution? Did you and your pair choose descriptive variable names?
I would say its pretty readable. I think its pretty good for two guys 4 weeks into learning code.

What is the difference between destructive and non-destructive methods in your own words?
The bang methods are more of warning and normally followed by a non destructive version of the code. Destructive methods change the values and objects of the code permanately, while non-destructive does not. Our code in our non destructive method, we did new_array = array.clone so that we could have a second array to destruct, but still have the ordinal array to use if needed later.
=end
