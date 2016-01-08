# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? array of strings or integers
# What is the output? (i.e. What should the code return?) array of most frequent occuring elements of inputted array
# What are the steps needed to solve the problem?
=begin
iterate array's values
make a hash
  wheres key are arrays value
  hash value is keyes each quanity
iterate over hash and compare one value to the other
capture the largest value (key or keyes)
return keys are the values that have the highest quanity
organize back into an array
=end

=begin

# 1. Initial Solution
def mode(array)
  new_hash = Hash.new{ |hash, key| new_hash[key]=1}
  array.each {|new_key| if new_hash.has_key?(new_key)
   # value = value + 1
    new_hash[new_key] += 1
    # puts new_hash
    else
    new_hash[new_key]
    # puts new_hash
    end
  }

final_array=[]
middle_array = new_hash.values
# puts middle_array.max

=begin
new_hash.each {|key,value|
  highest_value=0
  if value >= highest_value
    highest_value = value
  end

  # puts highest_value
new_hash.each {|key,value|
  if value == middle_array.max
    final_array.push(key)
  end
  }
return final_array
end


  puts mode([1,4,1,4,3,6])

=end
# 3. Refactored Solution

def mode(array)
  new_hash = Hash.new{ |hash, key| new_hash[key]=1}
  array.each {|new_key| if new_hash.has_key?(new_key)
   new_hash[new_key] += 1
    else
    new_hash[new_key]
    end
  }
#final_array=[]
middle_array = new_hash.values
final_array =new_hash.reject {|key,value|  value < middle_array.max}.keys
return final_array
end
puts mode([1,4,1,4,3,6])


# 4. Reflection
=begin
Which data structure did you and your pair decide to implement and why?
We used a hash because it gave us more flexibility. We stored all the array’s values in the hash keys, and if the array used an identical value, we used the hash values show many times it was seen in the array.

Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
Somewhat, pseudocode helped us get have a decent start.

What issues/successes did you run into when translating your pseudocode to code? As soon as you run into a wall you want to throw possible solutions in the code and hope it works. This isn’t best strategy. When this happens you should go back to your pseudocode and rethink your strategy.

What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement? .values, .reject .keys The .key method was a little tricky because it was executed after a block code and seemed foregin at first.
=end