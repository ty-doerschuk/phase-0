
# Factorial

# I worked on this challenge [by myself, with: ].
# input integer to get factorial number via method
# define factorial(number)
# assign sum = 1
# use correct loop to count down
# sum * number = new sum
# number = number - 1
# loop that back through
# end method
# return sum

# Your Solution Below
def factorial(number)
 sum = 1
 until number == 0
   sum *= number
   number -= 1
 end
 return sum
end