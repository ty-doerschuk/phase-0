# Simple Substrings

# I worked on this challenge [by myself, with: ].


# Your Solution Below

puts "What is your address?"
address = gets.chomp
def welcome (address)
  if address.include? "CA"
    return "Welcome to California"
  else
    return "You should move to California"
  end
end