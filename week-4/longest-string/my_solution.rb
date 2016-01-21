# Longest String

# I worked on this challenge by myself.

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below


def longest_string(list_of_words)
  if list_of_words.empty?
    return nil
  else
    list_of_words.sort! { |word1, word2| word1.length <=> word2.length }
  end
  return list_of_words[list_of_words.length - 1]
end