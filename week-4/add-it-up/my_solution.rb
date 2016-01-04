# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [with: Kyle Cierzan].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: use array of integers in a method/floats
# Output: sum of inputted array
# Steps to solve the problem.
# assign array of intergers or floats
# define total(array)
# use array built in methods
# execute code
# run and get correct output

# 1. total initial solution
 #array = [2,4.5,5]

 #def total(array)
  #total = 0
 #array.each do |x| total += x
 #end
 #return total
 #end




# 3. total refactored solution
array = [2,4.5,5]

def total(array)
  array.inject {|sum,n| sum + n}
end


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: array of strings
# Output: create one string (sentence)
# Steps to solve the problem.
# create array of strings
# define sentence_maker(array)
# method to take array to empty string
# string created by the method = ""
# built methods to add person and caplitazation


# 5. sentence_maker initial solution
# party_array = ["lets","party","bro"]

# def sentence_maker(party_array)
#  party_array[0].capitalize!
# empty_string = party_array.join(" ")
#  empty_string + "."
# end


# 6. sentence_maker refactored solution
party_array = ["lets","party","bro"]

def sentence_maker(party_array)
  party_array[0].capitalize!
  party_string = party_array.join(" ")
  return "#{party_string}."
end