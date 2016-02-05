# Reverse Words


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode
=begin
DEFINE mthod w. one argument
  set parameter to default empty string
  RETURN default

IF string has no spaces
  reverse string
  RETURN string

ELSIF string split > 1
  ITERATE through each group split string
    array << split string
    ITERATE through array and map reverse each element
=end


# Initial Solution
# def reverse_words(string = '')
#   if string == ''
#     return ''
#   elsif string.include? ' '
#     words = string.split (' ')
#     words.map! { |word| word.reverse }
#     words.join(' ')
#   else
#    string.reverse
#   end

# end


# Refactored Solution
def reverse_words(string = '')
  string
  if string.include? ' '
    words = string.split (' ')
    words.map! { |word| word.reverse }
    words.join(' ')
  else
   string.reverse
  end
end

# Reflection
=begin
What concepts did you review in this challenge?
Basic flow control and iteration.
What is still confusing to you about Ruby?
The little things when something doesn't work. It's confusing because you can ratioanlly think how something is working, but then if the codes doesn't work you get confused and annoyed. And normally, its because of a small syntax error. This is why Ruby is great, you can rationally think when you are pseduocoding and help you get off to a great start.
What are you going to study to get more prepared for Phase 1?
Control flow and loops.
=end