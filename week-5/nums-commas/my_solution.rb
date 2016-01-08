# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? an integer passed as a method argument
# What is the output? (i.e. What should the code return?) a string with commas after 3 integers
# What are the steps needed to solve the problem?
# define method with parameter
# IF interger is less than 1000
#   RETURN integer as string
# ELSIF integer is over 1000 and under 99999999
#   Convert integer to string
#   split integer into array
#   CASE when integer array is equal to 4,5,6,7,8
#      insert proper comma into correct index number and join array into one string

# 1. Initial Solution
=begin
def separate_comma(integer)
if integer < 1000
  p integer.to_s
elsif integer >= 1000 && integer < 99999999
  one_comma_num = integer.to_s
  split_array = one_comma_num.split(//)
  case
    when split_array.count == 4
    p split_array.insert(1, ",").join
    when split_array.count == 5
    p split_array.insert(2, ",").join
    when split_array.count == 6
    p split_array.insert(3, ",").join
    when split_array.count == 7
    p split_array.insert(4, ",").insert(1, ",").join
    when split_array.count == 8
    p split_array.insert(5, ",").insert(2, ",").join
  end
end
end
=end
# 2. Refactored Solution
def separate_comma(integer)
if integer < 1000
  p integer.to_s
elsif integer >= 1000 && integer < 99999999
  split_array = integer.to_s.split(//)
  array_index_count = split_array.count
  case array_index_count
    when 4
    p split_array.insert(1, ",").join # => eg 1,000
    when 5
    p split_array.insert(2, ",").join # => eg 10,000
    when 6
    p split_array.insert(3, ",").join # => eg 100,000
    when 7
    p split_array.insert(4, ",").insert(1, ",").join # => eg 1,000,000
    when 8
    p split_array.insert(5, ",").insert(2, ",").join # => eg 10,000,000
  end
end
end



# 3. Reflection
=begin
What was your process for breaking the problem down? What different approaches did you consider?
The first thing I wanted to do was just starting writing ideas down on paper. My first issue was trying to solve the issue exclusively with integers, which is impossible, so I spun my wheels until I read the directions again haha. Once I realized I had to output a string I realized I would need two groups, numbers under 1000 and numbers of 1000. I then to go with a if and elsif control measures.

Was your pseudocode effective in helping you build a successful initial solution? Somewhat, it’s hard for me to write a full pseudocode and then translate a whole answer. I like to break my pseudocode into a small section, then code and find a MVP. Then write some more pseudocode, and then write some more code.

What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how? I didn’t use any new methods because it would completely break my case control flow. I was leaning towards .times method, but due to time requirements I didn’t want dive into it.

How did you initially iterate through the data structure? I iterated through by testing the integer’s value with if and elsif.

Do you feel your refactored solution is more readable than your initial solution? Why? Yes, my object names are a bit cleaner and I cleaned up my when in my case flow. I also used comments to help guide the reader of what is returning in the method.

=end