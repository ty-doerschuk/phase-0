# Analyze the Errors

# I worked on this challenge [by myself].
# I spent [3] hours on this challenge.

# --- error -------------------------------------------------------

# cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# error.rb
# 2. What is the line number where the error occurs?
# 170
# 3. What is the type of error message?
# syntax
# 4. What additional information does the interpreter provide about this type of error?
# unexpected end-of-input
# 5. Where is the error in the code?
# At the last line of the interpreter
# 6. Why did the interpreter give you this error?
# Because after a loop command, an [end] command is necessary, or you will be forever looping

# --- error -------------------------------------------------------

# south_park = "TV Show"

# 1. What is the line number where the error occurs?
# 36
# 2. What is the type of error message?
# <main>
# 3. What additional information does the interpreter provide about this type of error?
# undefined local variable or method 'south-park' for main: object (name errors)
# 4. Where is the error in the code?
# before 'south-park' on line 36
# 5. Why did the interpreter give you this error?
# 'south-park' is not defined, it should be a variable or a called method
# --- error -------------------------------------------------------

# def cartman()
#  puts "Hello"
# end


# 1. What is the line number where the error occurs?
# 50
# 2. What is the type of error message?
# <main>
# 3. What additional information does the interpreter provide about this type of error?
# undefined method 'cartman'
# 4. Where is the error in the code?
# to the left of cartman, there needs to be a 'def' and and end after the method
# 5. Why did the interpreter give you this error?
# The parentheses makes me assume it's an undefined method and you're not calling it because you have to create a method before you can call it.

# --- error -------------------------------------------------------

# def cartmans_phrase
#  puts "I'm not fat; I'm big-boned!"
# end

# cartmans_phrase

# 1. What is the line number where the error occurs?
# 68 and 72
# 2. What is the type of error message?
# argument error
# 3. What additional information does the interpreter provide about this type of error?
# "cartmans_phrase" has the incorrect about of arguments
# 4. Where is the error in the code?
# The argumetn after cartmans_phrase is caleed in line 72
# 5. Why did the interpreter give you this error?
# An argument cannot be called when the defined method does not accept arguements.

# --- error -------------------------------------------------------

# def cartman_says(offensive_message)
#  puts offensive_message
# end

# cartman_says("Ironic but crude comment")

# 1. What is the line number where the error occurs?
# 87 and 91
# 2. What is the type of error message?
# argument error
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments
# 4. Where is the error in the code?
# After "cartmans_says" is called
# 5. Why did the interpreter give you this error?
# The method calls for one argument, and there was not an argument called when the "cartmans_says" method was called



# --- error -------------------------------------------------------

# def cartmans_lie(lie, name)
#  puts "#{lie}, #{name}!"
# end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!',1)

# 1. What is the line number where the error occurs?
# 108 and 112
# 2. What is the type of error message?
# argument error
# 3. What additional information does the interpreter provide about this type of error?
# Wrong number of arguments
# 4. Where is the error in the code?
# line 112 in the parentheses
# 5. Why did the interpreter give you this error?
# The defined method calls for two arguements, so the called method needs to have two arguments in the parentheses

# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# 127
# 2. What is the type of error message?
# type error
# 3. What additional information does the interpreter provide about this type of error?
# String can't be coerced into Fixnum
# 4. Where is the error in the code?
# The string before "*"
# 5. Why did the interpreter give you this error?
# Ruby doesn't not allow fixed numbers to multiply a string, unless the string is multiplied by a fixed number. So ["Respect my authoritay" * 5] works, while [5 * "Respect my authoritay"] would not.
# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# 141
# 2. What is the type of error message?
# Zero division error
# 3. What additional information does the interpreter provide about this type of error?
# divied by 0
# 4. Where is the error in the code?
# 20/0
# 5. Why did the interpreter give you this error?
# You can't divide by zero, that goes against the entire universe.

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# 157
# 2. What is the type of error message?
# Load error
# 3. What additional information does the interpreter provide about this type of error?
# Cannot load such file
# 4. Where is the error in the code?
# The attached md file
# 5. Why did the interpreter give you this error?
# There is no "cartmans_essay.md" in my repo to load.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

# Which error was the most difficult to read?
# [def cartman_hates(thing)], the first one error in the exercise. I forgot that the while command is a loop-command and this threw me for a loop, no pun intended.

# How did you figure out what the issue with the error was?
# A stack overflow posts on loops

# Were you able to determine why each error message happened based on the code?
# Yes, because the error put me on the bottom on page. This made me think that the problem was that something was not closed.

# When you encounter errors in your future code, what process will you follow to help you debug?
# Find the error line, read what ruby gives you, and google away.