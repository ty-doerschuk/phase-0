# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: initialized with an integer called 'answer'
# Output: a symbol if the the integer is low, high, or correct
# Steps:
=begin
1. Define class method
2. DEFINE initialize with 'answer' for guessing game as input
3. DEFINE instance method guess with input 'guess'
4. create instance variable for guess
5. IF 'answer' is equal to 'guess'
6.  RETURN correct symbol
7. ELSEIF 'answer' is less than 'guess'
8.  RETURN high symbol
9. ELSE 'answer' is greater than 'guess'
10. return low symbol
11. DEFINE instance method solved as true or false
12. IF 'guess' is equal to 'answer'
13.   RETURN true
14. ELSE 'guess' is not equal to 'answer'
15.   RETURN false
=end


# Initial Solution
=begin
class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
    @guess = guess
    if @answer == @guess
      return :correct
    elsif @answer < @guess
      return :high
    else @answer > @guess
      return :low
    end
  end

   def solved?
    if @guess == @answer
      return true
    else @guess != @answer
      return false
    end
  end
end
=end
  # Make sure you define the other required methods, too




# Refactored Solution
class GuessingGame

  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
    @guess = guess
    return :correct if @answer == @guess
    @guess > @answer ? :high : :low
  end

  def solved?
    @guess == @answer ? true : false
    end

end

# Reflection
=begin
How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
Since instance variables are bound to the class, we can associate them with any characteristics or behavior inside. So if we think of console video games, we would want to categories them. Let’s say by console. After we have them divided by console let’s rate the best console game against another best console game. So in Ruby terms, it would be a Class VideoGame, we would have instance variables such as PlayStation or NES, then we would have methods determining which PlayStation or NES game are better than each other. The point I am trying to make is that instance variables and methods are all related because they are all under the same class. It’s up to us the programmer to manipulate the data to achieve we want to discover.

When should you use instance variables? What do they do for you?
When you need to class variable from another instance method inside a class. They save us time and confusion.

Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
It’s the process of using control expression to manipulate your data. Since flow control is based around true or false, you can manipulate your data to go the place you want it to by yes or no. It keeps you on pace to your coding objective in my opinion. I did not have any trouble using flow control in this challenge. I kept it simple and just used if, elsif, or else to keep it easy to read and get a MVP.

Why do you think this code requires you to return symbols? What are the benefits of using symbols? Ruby symbols are immutable, which means they cannot be changed. This means they save memory. They were relevant to this challenge because :high, :low, and :correct didn’t not need to be manipulated, they just needed to be called.

=end