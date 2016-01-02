# Longest String

# I worked on this challenge [by myself, with: ].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below
longest_string = ["cat", "zzzzzzz", "apples"]

def longest_string(list_of_words)
  list_of_words.max do |word1, word2| word1.size <=> word2.size
  end
end
