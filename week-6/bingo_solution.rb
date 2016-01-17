
# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent 10 hours on this challenge.


# Release 0: Pseudocode
# Outline:
# Create class BingoBoard with one parameter (for array)
#   RETURN instance variable for array
#   RETURN instance variabel for modified board with transpose method to change rows and columns of original array
# DEFINE method to generate letter & number
#   assign instance variable for random letter
#   assign instance variable for random number
# DEFINE method bingo_check
#   ITERATE through modified bingo board first array inside array ('b')
#     IF Random letter equals random instance variable letter
#       Replace 'x' over value, and return other array values
#     ELSIF random letter does not equal letter
#    Return original values
#    REPEAT for 'i','n','g','o'
# DEFINE new instance method to display board
#   Create empty array
#    Add values bingo check method into array
#    Run method tranpose back to original array format
#    Display array
# DEFINE new display method
# take global variable from display board method
# PUTS 'BINGO' string
# uses instance variable from display board, create string, puts string

# class BingoBoard

#   def initialize(board)
#     @original_board = board
#     @mod_board = board.transpose
#   end

#   def call
#    @random_letter = rand(0..4)# b=0,i=1,n=2,g=3,o=4
#    @random_integer = rand(1..99)
#   end

#   def bingo_check
#     @b = @mod_board[0].map! { |element| if @random_letter == 0
#       element == @random_integer ? "X" : element
#       elsif @random_letter != 0
#       element
#       end}
#     @i = @mod_board[1].map! { |element| if @random_letter == 1
#       element == @random_integer ? "X" : element
#       elsif @random_letter != 1
#       element
#       end}
#     @n = @mod_board[2].map! { |element| if @random_letter == 2
#       element == @random_integer ? "X" : element
#       elsif @random_letter != 2
#       element
#       end}
#     @g = @mod_board[3].map! { |element| if @random_letter == 3
#       element == @random_integer ? "X" : element
#       elsif @random_letter != 3
#       element
#       end}
#     @o = @mod_board[4].map! { |element| if @random_letter == 4
#       element == @random_integer ? "X" : element
#       elsif @random_letter != 4
#       element
#       end}
#   end

#   def display_board
#     display_board = []
#     display_board << @b
#     display_board << @i
#     display_board << @n
#     display_board << @g
#     display_board << @o
#     @hit_board = display_board.transpose
#   end

#   def display_pretty
#     puts "B  I  N  G  O"
#     puts
#     puts @hit_board[0] * " "
#     puts @hit_board[1] * " "
#     puts @hit_board[2] * " "
#     puts @hit_board[3] * " "
#     puts @hit_board[4] * " "
#   end
# end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
# board = [[47, 44, 71, 8, 88],
#           [22, 69, 75, 65, 73],
#           [83, 85, 97, 89, 57],
#          [25, 31, 96, 68, 51],
#           [75, 70, 54, 80, 83]]



# bg = BingoBoard.new(board)
# bg.call
# bg.bingo_check
# bg.display_board
# bg.display_pretty

#Refactored Solution

class BingoBoard

  attr_writer :random_letter, :random_integer
  # if you want to call random letter or number manually
  attr_reader :board

  def initialize(board)
    @board = board.transpose
  end

  def call
   @random_letter = rand(0..4) # b=0,i=1,n=2,g=3,o=4
   @random_integer = rand(1..99)
  end

  def bingo_check

    @b = @board[0].map! { |element| if @random_letter == 0
      element == @random_integer ? "X" : element
      elsif @random_letter != 0
      element
      end}
    @i = @board[1].map! { |element| if @random_letter == 1
      element == @random_integer ? "X" : element
      elsif @random_letter != 1
      element
      end}
    @n = @board[2].map! { |element| if @random_letter == 2
      element == @random_integer ? "X" : element
      elsif @random_letter != 2
      element
      end}
    @g = @board[3].map! { |element| if @random_letter == 3
      element == @random_integer ? "X" : element
      elsif @random_letter != 3
      element
      end}
    @o = @board[4].map! { |element| if @random_letter == 4
      element == @random_integer ? "X" : element
      elsif @random_letter != 4
      element
      end}
  end

  def display_board
    @hit_board = Array.new.insert(0, @b, @i, @n, @g, @o).transpose
  end

  def display_pretty
    puts "B  I  N  G  O"
    puts
    puts @hit_board[0] * " "
    puts @hit_board[1] * " "
    puts @hit_board[2] * " "
    puts @hit_board[3] * " "
    puts @hit_board[4] * " "
  end
end


board = [[47, 44, 71, 8, 88],
          [22, 69, 75, 65, 73],
          [83, 85, 97, 89, 57],
          [25, 31, 96, 68, 51],
          [75, 70, 54, 80, 83]]



bg = BingoBoard.new(board)
bg.call
bg.bingo_check
bg.display_board
bg.display_pretty

=begin
Reflection
How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
I find if difficult to pseudocode the entire challenge at once. As with anything at DBC so far, it’s best practice for me to break everything down into chunks. When I break PC into chunks, it helps me write good PC. So for this challenge, I wrote a chunk of PC, then write the responding code. Once I was comfortable after doing some driver code with the current code, I would go back to PC. I think my style is okay, but I am curious of what professionals think.

What are the benefits of using a class for this challenge?
Instance variables were essential for this challenge because you were passing information to multiple instance methods. A huge benefit was that I could pass individual array values from method to method easily.

How can you access coordinates in a nested array?
Array[index][index][…]

What methods did you use to access and modify the array?
Insert and transpose

Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
The .transpose method did the heavy lifting in this challenge. The given array display didn’t exactly match the random number or random letter. So when random letter ‘B’ (0) was called, it had to match with the 0 index value in board[0],[1], [2],[3], and [4]. So there needed to be a method that grouped each second 0 index value into a new array. So the transpose method returns an array where the index values are flipped. So array[1][2] now becomes array[2][1]. This allowed all integers to group together so that I could iterate over all ‘B’(and I,N,G,O) values accordingly.

How did you determine what should be an instance variable versus a local variable?
If the variable only needs to stay local to it’s parent method then it would be a local variable. An instance variable should be used when it value needs to be passed to different methods inside a class.

What do you feel is most improved in your refactored solution?
I added attr methods, so the user could call manual letters and numbers if they wanted. I also cleaned up the repetition on the instance variable display_board. My main goal in refactoring was to cut down on the repetition in the bingo_check method. However, this was difficult because I assigned instance variables to each letter. If I wanted to streamline the code, I would have to break my current solution and start from scratch. I also felt if I did that I could be sacrificing readability.

=end