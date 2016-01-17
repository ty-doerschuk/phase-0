# Class Warfare, Validate a Credit Card Number

# I worked on this challenge with Jon Schwartz
# I spent 3 hours on this challenge.

# Pseudocode

# Input: 16 digit credit card number
# Output: true if credit card is valid, false otherwise
# Steps:

=begin
CREATE class CreditCard
  DEFINE initialize method with credit card argument
    RAISE argument error if credit card argument is not 16 digits
Convert original argument (cred_card_num) to_s. Use '.split' to break down string
      Push the 16 indiviudal strings to an array
      Convert the 16 individual strings to integers
      Assign instance variable to new array

#=======

DEFINE check_card method
  Double every other digit starting from the second to last digit, moving     backward
Call instance variable array and iterate over that array starting from the second-to-last digit
  RETURN values in array, doubled
Take doubled_num array, IF num greater than or equal to 10, run divmod(10) method on digits >= 10.
RETURN entire sum of divmod integers and array
MODULUS 10 to validate credit card

#=======

Starting with the second to last digit,
double every other digit until you reach the first digit.

Sum all the untouched digits and the doubled digits (doubled digits need to be broken apart, 10 becomes 1 + 0).

If the total is a multiple of ten,
you have received a valid credit card number!

=end

# Initial Solution

# Don't forget to check on initialization for a card length of exactly 16 digits

# class CreditCard
#   def initialize(cred_card_num)
#     if cred_card_num.to_s.length != 16
#       raise ArgumentError.new("Not a valid credit card number")
#     end
#     split_num = cred_card_num.to_s.split(//)
#     cred_card_array = split_num.map! {|num| num.to_i}
#     @cred_card_array = cred_card_array
#   end

#   def check_card
#     odd_index = @cred_card_array.values_at(1, 3, 5, 7, 9, 11, 13, 15)

#     even_index = @cred_card_array.values_at(0, 2, 4, 6, 8, 10, 12, 14)

#     doubled_even_index = @cred_card_array.values_at(0, 2, 4, 6, 8, 10, 12, 14).map {|x| (x * 2).divmod(10)}

#     var = (doubled_even_index.flatten).concat(odd_index)

#     sum = 0

#     (var.inject{|sum,x| sum + x }) % 10 == 0

#        end
#     end



class CreditCard
  def initialize(cred_card_num)
    raise ArgumentError.new("Not a valid credit card number") if cred_card_num.to_s.length != 16
    split_num = cred_card_num.to_s.split(//)
    @cred_card_array = split_num.map! {|num| num.to_i}
    # Credit card is now a split 15 value array of single integers
  end

  def check_card
    odd_index = @cred_card_array.values_at(1, 3, 5, 7, 9, 11, 13, 15)
    # could not find a refactorable soultion that iterated and returned odd/even index only with their values in an array. The code got too long.
    even_index = @cred_card_array.values_at(0, 2, 4, 6, 8, 10, 12, 14)

    doubled_even_index = even_index.map {|x| (x * 2).divmod(10)}

    split_cc_array = (doubled_even_index.flatten).concat(odd_index)

    split_cc_array.inject(:+) % 10 == 0
  end
end

=begin
Reflection

What was the most difficult part of this challenge for you and your pair?
We had most difficult time finding a solution that iterated over an array’s index numbers instead of their values. We believed their would be a nice clean method that would do what we wanted, but if there was one, we definitely did not find it, even after refactoring. And since the index values of the array were similar to the values in the array, it got quite confusing sometimes.

What new methods did you find to help you when you refactored?
The array method inject is nice if you are looking to add a sum for an array.

What concepts or learnings were you able to solidify in this challenge?
Well, I solidified that iterating over array’s index can be quite challenging. This was the first lesson that I had decent pseudocode and that definitely helped my partner and me.
=end