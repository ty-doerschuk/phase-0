puts "Hello there, and what\'s your first name?"
first_name = gets.chomp
puts "Now what is your middle initial?"
middle_name = gets.chomp
puts "And your last name?"
last_name = gets.chomp

puts "Your name is " + first_name + " " + middle_name + " " + last_name + "? What a lovely name!"
puts "Pleased to meet you bro, " + first_name + " " + middle_name + " " + last_name + ". :)"

puts "What is your favorite number?"
number = gets.chomp.to_i
new_number = number + 1
puts "That's nice, but your new favorite number is " + new_number.to_s + "...deal with it"

# How do you define a local variable?
# Start with a lowercase letter or underscore, e.g. num_1 = 435

# How do you define a method?
# You write “def [name]”, making sure you the [name] starts with a lowercase letter.

# What is the difference between a local variable and a method?
# A local variable is normal one line of syntax, while a a method is a group of syntax commands that are bundled together and called later on to execute.

# How do you run a ruby program from the command line?
# ruby [filename].rb

# How do you run an RSpec file from the command line?
# rspec [filename].rb

# What was confusing about this material? What made sense?
# The details mentioned in how to create method were a bit vague. I forgot that I need to use “return” and not “puts” within my method to complete the challenges. This took up a lot of unnecessary time, however, it was still a learning experience.
